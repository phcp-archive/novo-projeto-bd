class RelatoriosController < ApplicationController
  def index
  	search = params[:search]
  	if search
  		date = Date.new search["begin_date(1i)"].to_i, search["begin_date(2i)"].to_i
	  	@lista_compras_materia_prima = CompraMateriaPrima.find(:all, :conditions => ["strftime('%m', data) = '?' AND strftime('%Y', data) = '?'", date.month, date.year])
	  	@lista_compras_produto = CompraProduto.find(:all, :conditions => ["strftime('%m', data) = '?' AND strftime('%Y', data) = '?'", date.month, date.year])
 		@lista_solicitacoes = Solicitacao.find(:all, :conditions => ["strftime('%m', data) = '?' AND strftime('%Y', data) = '?'", date.month, date.year])
 		@lucro = 0
 		if not @lista_compras_materia_prima
 			@lista_compras_materia_prima = []
 		end
 		if not @lista_compras_produto
 			@lista_compras_produto = []
 		end
 		if not @lista_solicitacoes
 			@lista_solicitacoes = []
 		end
 		@lista_compras_materia_prima.each do |transacao|
 			if transacao.status != 0
 				@lucro -= transacao.pagamento
 			end
 		end
 		@lista_compras_produto.each do |transacao|
 			if transacao.status != 0
 				@lucro -= transacao.pagamento
 			end
 		end
 		@lista_solicitacoes.each do |transacao|
 			if transacao.status != 0
 				@lucro += transacao.pagamento - transacao.desconto
 			end
 		end
 	else
 		@lista_compras_materia_prima = []
 		@lista_compras_produto = []
 		@lista_solicitacoes = []
  	end
  end
end
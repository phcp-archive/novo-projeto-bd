class ProdutoSolicitado < ActiveRecord::Base
	belongs_to :produto
	belongs_to :solicitacao
end

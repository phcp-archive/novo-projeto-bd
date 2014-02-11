class ProdutoSolicitado < ActiveRecord::Base
	belongs_to :produto
	belongs_to :solicitacao
	accepts_nested_attributes_for :produto
end

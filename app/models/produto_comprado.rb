class ProdutoComprado < ActiveRecord::Base
	belongs_to :produto
	belongs_to :compra_produto
	accepts_nested_attributes_for :produto
end

class ProdutoComprado < ActiveRecord::Base
	belongs_to :produto
	belongs_to :compra_produto
end

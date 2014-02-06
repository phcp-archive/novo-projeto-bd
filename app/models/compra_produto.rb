class CompraProduto < ActiveRecord::Base
	belongs_to :fornecedor

	has_many :produto_comprados
	has_many :produto, :through => :produto_comprados
	accepts_nested_attributes_for :produto
end

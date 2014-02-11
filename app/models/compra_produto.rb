class CompraProduto < ActiveRecord::Base
	belongs_to :fornecedor

	has_many :produto_comprados
	has_many :produtos, :through => :produto_comprados
	accepts_nested_attributes_for :produto_comprados, :allow_destroy => true
end
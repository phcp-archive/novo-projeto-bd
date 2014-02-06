class CompraProduto < ActiveRecord::Base
	belongs_to :fornecedor
	has_and_belongs_to_many :produtos
end

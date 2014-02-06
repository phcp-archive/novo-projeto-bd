class Fornecedor < ActiveRecord::Base
	has_one :endereco, :as => :enderecavel
	accepts_nested_attributes_for :endereco, :allow_destroy => true
	
	has_one :telefone, :as => :telefonavel
	accepts_nested_attributes_for :telefone, :allow_destroy => true
	
	has_many :compra_produtos
	has_many :compra_materias_primas
end

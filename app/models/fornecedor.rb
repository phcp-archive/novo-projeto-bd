class Fornecedor < ActiveRecord::Base
	has_one :endereco, :as => :enderecavel, :dependent => :destroy
	accepts_nested_attributes_for :endereco, :allow_destroy => true
	
	has_one :telefone, :as => :telefonavel, :dependent => :destroy
	accepts_nested_attributes_for :telefone, :allow_destroy => true
	
	has_many :compra_produtos
	accepts_nested_attributes_for :compra_produtos

	has_many :compra_materias_primas
	accepts_nested_attributes_for :compra_materias_primas
end

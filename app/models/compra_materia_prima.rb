class CompraMateriaPrima < ActiveRecord::Base
	belongs_to :fornecedor

	has_many :materia_compradas
	has_many :materia_primas, :through => :materia_compradas
	accepts_nested_attributes_for :materia_compradas, :allow_destroy => true
end

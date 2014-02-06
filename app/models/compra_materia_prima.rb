class CompraMateriaPrima < ActiveRecord::Base
	belongs_to :fornecedor

	has_many :materia_compradas
	has_many :materia_prima, :through => :materia_compradas
	accepts_nested_attributes_for :materia_prima
end

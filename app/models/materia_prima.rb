class MateriaPrima < ActiveRecord::Base
	has_many :materia_utilizadas
	has_many :producoes, :through => :materia_utilizadas
	accepts_nested_attributes_for :producoes

	has_many :materia_compradas
	has_many :compra_materias_primas, :through => :materia_compradas
	accepts_nested_attributes_for :compra_materias_primas

end

class MateriaUtilizada < ActiveRecord::Base
	belongs_to :materia_prima
	belongs_to :producao
	accepts_nested_attributes_for :materia_prima
end

class MateriaComprada < ActiveRecord::Base
	belongs_to :materia_prima
	belongs_to :compra_materia_prima
	accepts_nested_attributes_for :materia_prima
end

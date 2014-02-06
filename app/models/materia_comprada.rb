class MateriaComprada < ActiveRecord::Base
	belongs_to :materia_prima
	belongs_to :compra_materia_prima
end

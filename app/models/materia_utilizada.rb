class MateriaUtilizada < ActiveRecord::Base
	belongs_to :materia_prima
	belongs_to :producao
end

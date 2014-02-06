class MateriaPrima < ActiveRecord::Base
	has_and_belongs_to_many :producoes
	has_and_belongs_to_many :compra_materias_primas
end

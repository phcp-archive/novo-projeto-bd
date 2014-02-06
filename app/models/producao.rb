class Producao < ActiveRecord::Base
	has_and_belongs_to_many :materias_primas
	belongs_to :produto
end

class Producao < ActiveRecord::Base
	belongs_to :produto

	has_many :materia_usadas
	has_many :materia_prima, :through => :materia_usadas
	accepts_nested_attributes_for :materia_prima
end

class Producao < ActiveRecord::Base
	belongs_to :produto

	has_many :materia_utilizadas
	has_many :materia_prima, :through => :materia_utilizadas
	accepts_nested_attributes_for :materia_utilizadas, :allow_destroy => true
end

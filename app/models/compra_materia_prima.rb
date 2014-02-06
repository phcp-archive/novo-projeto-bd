class CompraMateriaPrima < ActiveRecord::Base
	belongs_to :fornecedor
	has_and_belongs_to_many :materias_primas
end

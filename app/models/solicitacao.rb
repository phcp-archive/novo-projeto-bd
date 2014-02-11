class Solicitacao < ActiveRecord::Base
	belongs_to :pessoa

	has_many :produto_solicitados
	has_many :produtos, :through => :produto_solicitados
	accepts_nested_attributes_for :produto_solicitados, :allow_destroy => true
end

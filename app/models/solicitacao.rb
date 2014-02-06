class Solicitacao < ActiveRecord::Base
	belongs_to :pessoa
	has_and_belongs_to_many :produtos
end

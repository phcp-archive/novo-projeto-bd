class Produto < ActiveRecord::Base
	has_many :producoes
	has_and_belongs_to_many :compra_produtos
	has_and_belongs_to_many :solicitacoes
end

class Produto < ActiveRecord::Base
	has_many :producoes
	accepts_nested_attributes_for :producoes

	has_many :produto_comprados
	has_many :compra_produtos, :through => :produto_comprados
	accepts_nested_attributes_for :compra_produtos

	has_many :produto_solicitados
	has_many :solicitacoes, :through => :produto_solicitados
	accepts_nested_attributes_for :solicitacoes

	def self.search(search, id)
		if search
			where(['nome LIKE ?', "%#{search}%"])
		else
			scoped
		end
	end
end

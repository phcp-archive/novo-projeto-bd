class Pessoa < ActiveRecord::Base
	has_one :endereco, :as => :enderecavel, :dependent => :destroy
	accepts_nested_attributes_for :endereco, :allow_destroy => true
	
	has_one :telefone, :as => :telefonavel, :dependent => :destroy
	accepts_nested_attributes_for :telefone, :allow_destroy => true
	
	has_many :solicitacoes
	accepts_nested_attributes_for :solicitacoes

	def self.search(search, id)
		if search
			where(['nome LIKE ?', "%#{search}%"])
		else
			scoped
		end
	end
end

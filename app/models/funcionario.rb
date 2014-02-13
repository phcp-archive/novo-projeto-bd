class Funcionario < Pessoa
	self.table_name = "funcionarios"

	def self.search(search, id)
		if search
			where(['nome LIKE ?', "%#{search}%"])
		else
			scoped
		end
	end
end

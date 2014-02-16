class User < ActiveRecord::Base
	acts_as_authentic do |c|
		c.login_field = 'email'
  	end # block optional

	def self.search(search, id)
		if search
			where(['nome LIKE ?', "%#{search}%"])
		else
			scoped
		end
	end
end

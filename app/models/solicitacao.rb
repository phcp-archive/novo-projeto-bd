class Solicitacao < ActiveRecord::Base
	belongs_to :pessoa

	has_many :produto_solicitados
	has_many :produtos, :through => :produto_solicitados
	accepts_nested_attributes_for :produto_solicitados, :allow_destroy => true

	def self.search(search, id)
		if search
   			begin_date = Date.new search["begin_date(1i)"].to_i, search["begin_date(2i)"].to_i, search["begin_date(3i)"].to_i
   			end_date = Date.new search["end_date(1i)"].to_i, search["end_date(2i)"].to_i, search["end_date(3i)"].to_i
			where(:data => begin_date..end_date)
		else
			scoped
		end
	end
end

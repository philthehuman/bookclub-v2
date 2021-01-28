class Author < ApplicationRecord
	has_many :books

	def name
		return "#{first_name} #{last_name}"
	end
end

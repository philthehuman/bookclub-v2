class Author < ApplicationRecord
	has_many :books

	def name
		return "#{first_name} #{last_name}"
	end

	def self.find_by_name(first_name, last_name)
		return Author.find_by(first_name: first_name, last_name: last_name)
	end
end

class AuthorsController < ApplicationController
	before_action :set_author, only: [:show]
	before_action :read_authors, only: [:index]

	def index
	end

	def show
	end

	private 
	def read_authors
		@authors = Author.all
	end
	def set_author
		if params[:id]
			@author = Author.find(params[:id])
		end
	end
end

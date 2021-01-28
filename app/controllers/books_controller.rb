class BooksController < ApplicationController
	before_action :read_books, only: [:index]
	before_action :set_book, only: [:show]
	def index
	end

	def show
	end

	private
	def read_books
		@books = Book.all
	end
	def set_book
		if params[:id]
			@book = Book.find(params[:id])
		end
	end
end

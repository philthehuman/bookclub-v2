class BooksController < ApplicationController
	before_action :read_books, only: [:index]
	before_action :set_book, only: [:show]

	def index
	end

	def show
	end

	def create

		author = Author.find_by_name(book_params[:author_first_name], book_params[:author_last_name])

		author = author || Author.new(first_name: book_params[:author_first_name], last_name: book_params[:author_last_name])

		book = Book.create(title: book_params[:title], genre: book_params[:genre], author: author)

		redirect_to book_path(book.id)
	end

	def new
		@book = Book.new
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
	def book_params
		params.require(:book).permit(:title, :genre, :author_first_name, :author_last_name)
	end
end

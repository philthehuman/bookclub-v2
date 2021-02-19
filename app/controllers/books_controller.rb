class BooksController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
	before_action :check_role, only: [:new, :create]
	before_action :read_books, only: [:index]
	before_action :set_book, only: [:show]

	def index
	end

	def show
	end

	def create
		author_params = book_params[:author_attributes]
		if !author_params[:first_name].empty? && !author_params[:last_name].empty?
			# Create new author
			@author = Author.create(author_params)
		else
			# Use the selected author
			@author = Author.find(book_params[:author])
		end

		book = Book.create(title: book_params[:title], genre_ids: book_params[:genres], price: book_params[:price], author: @author)
		book.cover.attach(book_params[:cover])

		redirect_to book_path(book.id)
	end

	def new
		@book = Book.new
		@book.build_author
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
		params.require(:book).permit(:title, :cover, :price, :author, genres: [], author_attributes: [:first_name, :last_name])
	end
	def check_role
		if Book.new.can_edit? current_user
			return
		else
			flash[:alert] = "Get off my lawn!"
			redirect_to root_path
		end
	end
end

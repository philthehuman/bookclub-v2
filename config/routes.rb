Rails.application.routes.draw do
  devise_for :users
	get "/", to: "books#index"
	get "/books", to: "books#index"
	get "/books/new", to: "books#new", as: "new_book"
	get "/books/:id", to: "books#show", as: "book"
	post "/books", to: "books#create"
	get "/authors", to: "authors#index"
	get "/authors/:id", to: "authors#show", as: "author"
end

Rails.application.routes.draw do
	get "/", to: "books#index"
	get "/books", to: "books#index"
	get "/books/:id", to: "books#show", as: "book"
	get "/authors", to: "authors#index"
	get "/authors/:id", to: "authors#show", as: "author"
end

Rails.application.routes.draw do
	get "/", to: "books#index"
	get "/books", to: "books#index"
	get "/books/:id", to: "books#show", as: "book"
end

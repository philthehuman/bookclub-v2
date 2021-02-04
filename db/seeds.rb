# clean up
BooksGenre.destroy_all
Genre.destroy_all
Book.destroy_all
Author.destroy_all


proust = Author.create(first_name: "Marcel", last_name: "Proust")
cervantes = Author.create(first_name: "Miguel", last_name: "de Cervantes")
joyce = Author.create(first_name: "James", last_name: "Joyce")
fitzgerald = Author.create(first_name: "F. Scott", last_name: "Fitzgerald")
melville = Author.create(first_name: "Herman", last_name: "Melville")
tolstoy = Author.create(first_name: "Leo", last_name: "Tolstoy")
homer = Author.create(first_name: "", last_name: "Homer")

scifi = Genre.create(name: "Science Fiction")
fantasy = Genre.create(name: "Fantasy")
classics = Genre.create(name: "Classics")
phil = Genre.create(name: "Philosophy")

proust.books.create(title: "In Search of Lost Time", genres: [classics, phil])
cervantes.books.create(title: "Don Quixote", genres: [classics])
joyce.books.create(title: "Ulysses", genres: [classics])
fitzgerald.books.create(title: "The Great Gatsby", genres: [classics])
melville.books.create(title: "Moby Dick", genres: [classics])
tolstoy.books.create(title: "Hamlet", genres: [classics])
homer.books.create(title: "The Odyssey", genres: [classics])

heinlein = Author.create(first_name: "Robert", last_name: "Heinlein")
heinlein.books.create(title: "Stranger in a Strange Land", genres: [scifi])
heinlein.books.create(title: "Friday", genres: [scifi])
heinlein.books.create(title: "The Moon is a Harsh Mistress", genres: [scifi])

gaiman = Author.create(first_name: "Neil", last_name: "Gaiman")
gaiman.books.create(title: "American Gods", genres: [fantasy])
gaiman.books.create(title: "Anansi Boys", genres: [fantasy])
gaiman.books.create(title: "Neverwhere", genres: [fantasy])

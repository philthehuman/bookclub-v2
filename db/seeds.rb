# clean up
Book.destroy_all
Author.destroy_all


proust = Author.create(first_name: "Marcel", last_name: "Proust")
cervantes = Author.create(first_name: "Miguel", last_name: "de Cervantes")
joyce = Author.create(first_name: "James", last_name: "Joyce")
fitzgerald = Author.create(first_name: "F. Scott", last_name: "Fitzgerald")
melville = Author.create(first_name: "Herman", last_name: "Melville")
tolstoy = Author.create(first_name: "Leo", last_name: "Tolstoy")
homer = Author.create(first_name: "", last_name: "Homer")

proust.books.create(title: "In Search of Lost Time")
cervantes.books.create(title: "Don Quixote")
joyce.books.create(title: "Ulysses")
fitzgerald.books.create(title: "The Great Gatsby")
melville.books.create(title: "Moby Dick")
tolstoy.books.create(title: "Hamlet")
homer.books.create(title: "The Odyssey")

heinlein = Author.create(first_name: "Robert", last_name: "Heinlein")
heinlein.books.create(title: "Stranger in a Strange Land", genre: "science fiction")
heinlein.books.create(title: "Friday", genre: "science fiction")
heinlein.books.create(title: "The Moon is a Harsh Mistress", genre: "science fiction")

gaiman = Author.create(first_name: "Neil", last_name: "Gaiman")
gaiman.books.create(title: "American Gods", genre: "fantasy")
gaiman.books.create(title: "Anansi Boys", genre: "fantasy")
gaiman.books.create(title: "Neverwhere", genre: "fantasy")
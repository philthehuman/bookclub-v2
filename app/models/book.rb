class Book < ApplicationRecord
  belongs_to :author
  has_many :books_genres
  has_many :genres, through: :books_genres
  accepts_nested_attributes_for :author

  def list_genres
    (self.genres.map { |genre| genre.name }).join(", ")
  end
end

class Library < ApplicationRecord

  has_many :library_books
  has_many :books, through: :library_books
end
class Book < ApplicationRecord
  has_many :library_books
  has_many :libraries, through: :library_books
end
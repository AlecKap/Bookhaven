class Library < ApplicationRecord
  has_many :library_books
  has_many :books, through: :library_books


  def full_address
    "#{address}, #{city}, #{state} #{zip_code}"
  end

  def num_of_books
    books.count
  end
end
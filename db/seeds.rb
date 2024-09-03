require 'faker'

LibraryBook.destroy_all
Book.destroy_all
Library.destroy_all

puts "Seeding Data"
sleep(1)
puts "."
sleep(1)
puts ".."
sleep(1)
puts "..."

# Libraries

sleep(1)

library_1 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_2 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_3 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_4 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_5 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_6 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_7 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_8 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_9 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )
library_10 = Library.create(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip_code: Faker::Address.zip_code,
  charter_number: Faker::Number.number(digits: 10)
  )

puts "10 Libraries Created"

# Books

book_1 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_2 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_3 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_4 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_5 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_6 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_7 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_8 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_9 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_10 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_11 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_12 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_13 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_14 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_15 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_16 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_17 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_18 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_19 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)
book_20 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn)

puts "20 Books Created"

# Library Books

LibraryBook.create(library_id: library_1.id, book_id: book_1.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_1.id, book_id: book_2.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_1.id, book_id: book_3.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_1.id, book_id: book_4.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_2.id, book_id: book_5.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_2.id, book_id: book_6.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_2.id, book_id: book_7.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_3.id, book_id: book_8.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_4.id, book_id: book_9.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_5.id, book_id: book_10.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_6.id, book_id: book_11.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_6.id, book_id: book_12.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_6.id, book_id: book_13.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_6.id, book_id: book_14.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_7.id, book_id: book_15.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_7.id, book_id: book_16.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_8.id, book_id: book_17.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_9.id, book_id: book_18.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_9.id, book_id: book_19.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_10.id, book_id: book_20.id, quality: Faker::Number.between(from: 1, to: 5))

puts "20 LibraryBooks Created"
# create_table "library_books", force: :cascade do |t|
#   t.bigint "library_id", null: false
#   t.bigint "book_id", null: false
#   t.integer "quality"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["book_id"], name: "index_library_books_on_book_id"
#   t.index ["library_id"], name: "index_library_books_on_library_id"
# end
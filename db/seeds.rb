require 'faker'

LibraryBook.destroy_all
Book.destroy_all
Library.destroy_all

puts "Seeding Data"

# Libraries

sleep(1)

library_6 = Library.create( name: "Lulu's little library",
                            address: "3605 W Berry Ave",
                            city: "Littleton",
                            state: "CO",
                            charter_number: Faker::Number.number(digits: 10))

library_7 = Library.create( name: "Little Rainbow Library",
                            address: "985 W 11th Ct",
                            city: "Broomfield",
                            state: "CO",
                            zip_code: Faker::Address.zip_code,
                            charter_number: Faker::Number.number(digits: 10))

library_8 = Library.create( name: "Kay Davis",
                            address: "885 Marble Street",
                            city: "Broomfield",
                            state: "CO",
                            charter_number: Faker::Number.number(digits: 10))

library_9 = Library.create( name: "Oak Street Library",
                            address: "2873 Miramonte Blvd",
                            city: "Broomfield",
                            state: "CO",
                            zip_code: "80020",
                            charter_number: Faker::Number.number(digits: 10))

library_10 = Library.create(name: "Broomfield Depot Museum Museum Manager",
                            address: "2201 W. 10th Ave.",
                            city: "Broomfield",
                            state: "CO",
                            zip_code: "80020",
                            charter_number: "66632")

library_11 = Library.create(name: "Test Library",
                            address: "2170 west 10th ave",
                            city: "Broomfield",
                            state: "CO",
                            zip_code: Faker::Address.zip_code,
                            charter_number: Faker::Number.number(digits: 10))

puts "11 Libraries Created"

sleep(1)
puts "."
# Books

book_1 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_2 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_3 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_4 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_5 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_6 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_7 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_8 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_9 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_10 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_11 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_12 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_13 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_14 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_15 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_16 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_17 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_18 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_19 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_20 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_21 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)
book_22 = Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, initial_rating: Faker::Number.between(from: 1, to: 5), description: Faker::Lorem.paragraph(sentence_count: 3), isbn_10: Faker::Code.isbn, isbn_13: Faker::Code.isbn, thumbnail_img: Faker::Avatar.image, sm_thumbnail_img: Faker::Avatar.image)

sleep(1)
puts ".."
puts "22 Books Created"

# Library Books

LibraryBook.create(library_id: library_11.id, book_id: book_1.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_11.id, book_id: book_2.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_11.id, book_id: book_9.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_6.id, book_id: book_11.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_6.id, book_id: book_12.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_6.id, book_id: book_13.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_6.id, book_id: book_14.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_7.id, book_id: book_15.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_7.id, book_id: book_16.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_8.id, book_id: book_17.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_9.id, book_id: book_18.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_11.id, book_id: book_19.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_10.id, book_id: book_20.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_11.id, book_id: book_21.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_11.id, book_id: book_22.id, quality: Faker::Number.between(from: 1, to: 5))

sleep(1)
puts "..."

puts "22 LibraryBooks Created"
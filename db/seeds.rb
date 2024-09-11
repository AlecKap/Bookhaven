require 'faker'

LibraryBook.destroy_all
Book.destroy_all
Library.destroy_all

puts "Seeding Data"

# Libraries

sleep(1)

library_1 = FactoryBot.create(:library)

library_2 = FactoryBot.create(:library)

library_3 = FactoryBot.create(:library)

library_4 = FactoryBot.create(:library)

library_5 = FactoryBot.create(:library)

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

puts "#{Library.count} Libraries Created"

sleep(1)
puts "."
# Books

book_1 = FactoryBot.create(:book)
book_2 = FactoryBot.create(:book)
book_3 = FactoryBot.create(:book)
book_4 = FactoryBot.create(:book)
book_5 = FactoryBot.create(:book)
book_6 = FactoryBot.create(:book)
book_7 = FactoryBot.create(:book)
book_8 = FactoryBot.create(:book)
book_9 = FactoryBot.create(:book)
book_10 = FactoryBot.create(:book)
book_11 = FactoryBot.create(:book)
book_12 = FactoryBot.create(:book)
book_13 = FactoryBot.create(:book)
book_14 = FactoryBot.create(:book)
book_15 = FactoryBot.create(:book)
book_16 = FactoryBot.create(:book)
book_17 = FactoryBot.create(:book)
book_18 = FactoryBot.create(:book)
book_19 = FactoryBot.create(:book)
book_20 = FactoryBot.create(:book)
book_21 = FactoryBot.create(:book)
book_22 = FactoryBot.create(:book)

sleep(1)
puts ".."
puts "#{Book.count} Books Created"

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
LibraryBook.create(library_id: library_11.id, book_id: book_21.id, quality: Faker::Number.between(from: 1, to: 5))
LibraryBook.create(library_id: library_11.id, book_id: book_22.id, quality: Faker::Number.between(from: 1, to: 5))

sleep(1)
puts "..."

puts "#{LibraryBook.count} LibraryBooks Created"

User.create(email: "test@example.com", password: "password", first_name: "Test", last_name: "User")

puts "User Created, test@example.com, password"
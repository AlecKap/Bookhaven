FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    genre { Faker::Book.genre }
    thumbnail_img { "https://dummyimage.com/200x300/000/fff&text=Book+Cover" }
    sm_thumbnail_img { "https://dummyimage.com/100x150/000/fff&text=Book+Cover" }
    initial_rating { Faker::Number.between(from: 1, to: 5) }
    description { Faker::Lorem.paragraph }
    isbn_10 { Faker::Number.number(digits: 10) }
    isbn_13 { Faker::Number.number(digits: 13) }
  end
end
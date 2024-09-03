FactoryBot.define do
  factory :library do
    name { Faker::Company.name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip_code { Faker::Address.zip_code }
    charter_number { Faker::Number.number(digits: 10) }
  end
end
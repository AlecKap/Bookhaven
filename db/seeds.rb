require 'faker'
puts "Seeding Data"
sleep(1)
puts "."
sleep(1)
puts ".."
sleep(1)
puts "..."

# Libraries

sleep(1)
Library.destroy_all

10.times do
  Library.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    charter_number: Faker::Number.number(digits: 10)
    )
end

puts "10 Libraries Created"
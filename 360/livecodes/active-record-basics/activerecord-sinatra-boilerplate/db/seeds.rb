require 'faker'

100.times do
  Restaurant.create(
    name: Faker::Hacker.say_something_smart,
    address: Faker::Address.street_address
  )
end

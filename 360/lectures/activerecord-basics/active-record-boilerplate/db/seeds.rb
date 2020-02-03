# This is where you can create initial data for your app.
# Restaurant.create(name: 'hoxton100')
# Restaurant.create(name: 'hoxton100')
# Restaurant.create(name: 'hoxton100')
# Restaurant.create(name: 'hoxton100')
# Restaurant.create(name: 'hoxton100')
# Restaurant.create(name: 'hoxton100')
require 'faker'

100.times do
  Restaurant.create(
    name: Faker::Restaurant.name ,
    address: Faker::Address.street_address
  )
end

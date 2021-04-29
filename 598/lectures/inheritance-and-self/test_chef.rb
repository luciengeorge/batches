require_relative 'chef'
require_relative 'restaurant'

pret = Restaurant.new('pret', 20, 'london', 'sandwiches', 'john')

hoxton = Restaurant.new('hoxton', 20, 'london', 'japanese', 'Lucien')
# puts pret.name
# p pret.who_am_i
# Restaurant.cuisines
# puts ""
# puts hoxton.name
# p hoxton.who_am_i

# chef_name works at restaurant_name
puts "#{pret.chef.name} works at #{pret.name}"

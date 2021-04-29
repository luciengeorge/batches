require_relative 'restaurant'

pret = Restaurant.new('pret', 20, 'london', 'sandwiches')

# p pret

# pret is in london
# puts "#{pret.name} is in #{pret.location}"

# # pret can accomodate 20 people
# puts "#{pret.name} can accomodate #{pret.capacity} people"

# puts "expanding #{pret.name}"

# pret.capacity = 40

# puts "#{pret.name} can accomodate #{pret.capacity} people"

# # pret is currently open/closed
# puts "#{pret.name} is currently #{pret.open? ? 'open' : 'closed'}"


# a client booked a slot in the restaurant
# p pret
# pret.book('lucien')
# p pret

p pret.cuisines

require_relative "restaurant"

nandos = Restaurant.new('Nandos', 40, 'london', 'chicken')
p nandos

# print name and location of restaurant
# x is in y
puts "#{nandos.name} is in #{nandos.city}"

# print name and capacity of restaurant
puts "#{nandos.name} can sit #{nandos.capacity}"

# some work is done
# increase capacity of restaurant instance
nandos.capacity = 60

p nandos

# print open/closed
puts "#{nandos.name} is currently #{nandos.open? ? 'open' : 'closed'}"


nandos.book('Lucien')

p nandos








require_relative 'restaurant'

hoxton = Restaurant.new('100 hoxton', 'Hoxton', 30, 'Japanese')

p hoxton

# print X is in Y
puts "#{hoxton.name} is in #{hoxton.location}"

# print X can accomodate Y people
puts "#{hoxton.name} can accomodate #{hoxton.capacity} people"

# construction > number of people
puts "Construction happening..."
hoxton.capacity = 50

puts "#{hoxton.name} can accomodate #{hoxton.capacity} people"

# X is currently open/closed
# puts "#{hoxton.name} is currently #{hoxton.open_or_close}"
puts "#{hoxton.name} is currently #{hoxton.open? ? 'open' : 'closed'}"

# will be empty because we have no clients yet
p hoxton.clients

puts "alex is booking..."
hoxton.book('Alex')
puts "arthur is booking..."
hoxton.book('Arthur')

# will display 2 clients
p hoxton.clients

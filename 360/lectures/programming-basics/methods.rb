require 'date'

def tomorrows_date
  tomorrow = Date.today + 1
  tomorrow.strftime('%A, %b %d')
end

# code here
# code here
# ...

tomorrow = tomorrows_date
p tomorrow

def full_name(first, last) # parameters
  "#{first.capitalize} #{last.capitalize}"
end

first_name = 'lucien'
last_name = 'george'
puts full_name(first_name, last_name) # arguments

# cities = ['paris', 'london']

puts "What's your first name"
first_name = gets.chomp

puts "What's your last name"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"
puts full_name

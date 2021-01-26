require_relative 'calculator'

# TODO: you can build your calculator program here!
# Pseudo-code (what are the steps in plain english):
# 0. Loop until user tells us to stop
# 1. Say hello to the user
puts "Hello user!"
start_over = 'y'
while start_over == 'y'
  # 2. Ask user for the first number => gets.chomp
  puts "Please enter a number"
  # 3. Get user answer, and save it in a variable
  first_number = gets.chomp.to_i
  # 4. Ask user for second number => gets.chomp
  puts "Please enter a second number"
  # 5. save it in another variable
  second_number = gets.chomp.to_i
  # ask the user for an operator
  puts "Enter an operator"
  operator = gets.chomp
  result = calculate_result(first_number, second_number, operator)
  if result == nil
    puts "Please enter one of [+, -, *, /]"
  else
    puts result
  end
  puts "Would you like to go again? [y/n]"
  start_over = gets.chomp
end

## solution 2
# loop do
#   # 2. Ask user for the first number => gets.chomp
#   puts "Please enter a number"
#   # 3. Get user answer, and save it in a variable
#   first_number = gets.chomp.to_i
#   # 4. Ask user for second number => gets.chomp
#   puts "Please enter a second number"
#   # 5. save it in another variable
#   second_number = gets.chomp.to_i
#   # ask the user for an operator
#   puts "Enter an operator"
#   operator = gets.chomp
#   # if operator is +
#   # perform an addition
#   result = calculate_result(first_number, second_number, operator)
#   if result == nil
#     puts "Please enter one of [+, -, *, /]"
#   else
#     puts result
#   end
#   puts "Would you like to go again? [y/n]"
#   answer = gets.chomp
#   break if answer == 'n'
# end

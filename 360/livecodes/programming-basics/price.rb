# get input from user
# create a randomizer for the price
# check if the price is equal/greater/lower than user input
# need a loop (until the user guesses the price)
# counter for number of guesses

# basic version
puts 'What is your guess?'
guess = gets.chomp.to_i
price = rand(1..30)
guess_count = 1

until guess == price
  if guess > price
    puts 'Too high'
  elsif guess < price
    puts 'Too low'
  end

  puts 'What is your guess?'
  guess = gets.chomp.to_i
  guess_count += 1
end
puts "#{price} is right! You got it right in #{guess_count} attempts"

# ==================================================================

# Enhanced code by adding methods
# and logic added to check if number is in range (i.e. between 1 and 30)
def ask_user
  puts "What is your guess?"
  gets.chomp.to_i
end

def game(guess)
  upper = 30
  lower = 1
  price = rand(lower..upper)
  guess_count = 1
  until guess == price
    if guess > upper || guess < lower
      puts 'out of range'
    else
      if guess > price
        puts 'Too high'
      elsif guess < price
        puts 'Too low'
      end
    end

    guess = ask_user
    guess_count += 1
  end
  "#{price} is right! You got it right in #{guess_count} attempts"
end

guess = ask_user
puts game guess

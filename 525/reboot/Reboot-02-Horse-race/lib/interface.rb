# TODO: you can build your horse race program here!
# horses should be a list of horses
horses = [ "NOIR", "JAGUAR", "EBONY", "ONYX", "DOMINO", "CLEVELAND", "ADOBE", "CINNAMON", "KIT KAT", "BRANDY"]
# initialize balance
balance = 100

# greet user
puts "-------------------------"
puts "WELCOME TO THE HORSE RACE"
puts "-------------------------"

# loop over all of the below
loop do
  puts "Select a horse from the list below"
  horses.each_with_index do |horse, index|
    puts "#{index + 1}. #{horse}"
  end

  # ask the user to select a horse
  puts "Please select a horse from the list above"
  chosen_index = gets.chomp.to_i - 1

  puts "You chose #{horses[chosen_index]}"

  puts "How much money do you want to bet?"
  bet = gets.chomp.to_i
  puts "You decided to bet £#{bet}"

  winner = horses.sample

  # user shouldn't be able to bet more than available balance
  if bet > balance
    puts "You don't have enough funds"
  else
    puts "And the winner is..."
    puts "#{winner}"

    # need to check whether or not the user won
    if winner == horses[chosen_index]
      # update the balance
      balance += bet * 1.5 # => balance = balance + bet * 1.5
      puts "Congratulations you won! your balance is now £#{balance}"
    else
      # update the balance
      balance -= bet # => balance = balance - bet
      puts "Oops you lost! your balance is now #{balance}"
    end
  end

  # check for remaining funds
  if balance <= 0
    puts "No more funds" # user has no more funds and breaks out of the loop
    break
  else
    # ask the user if they still want to bet
    puts "Do you want to continue? [y/n]"
    continue = gets.chomp # gets the user input
    break if continue == 'n' # stops if the user enters "n"
  end
end

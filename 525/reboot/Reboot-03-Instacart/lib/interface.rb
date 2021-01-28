# TODO: you can build your instacart program here!

############################### STEP 1 ###############################

# Items are stored in a hash
# Each key is the name of the item
# Each value is the price of the item
items = {
  'kiwi' => 1.25,
  'banana' => 0.5,
  'mango' => 4,
  'asparagus' => 9
}

# Greeting the user
puts "------------------------"
puts "Welcome to Le Wagon Shop"
puts "------------------------"

# Displaying the items in our store with their prices
puts "Here are the items in our store:"

# Iterating over the hash and display each item with their price
items.each do |item, price| # item represents each key, price represents each value
  puts "#{item}: £#{price}"
end
puts "--------------------------------"

# Initializing the balance to 0
balance = 0

# Looping until the user wants to quit
loop do
  # Ask the user what item they want and store it in the variable user_choice
  puts "Which item (or 'quit' to checkout)"
  user_choice = gets.chomp

  # If the user enters quit, we break out of the loop
  break if user_choice == 'quit'

  # Checking if the item chosen by the user is in our store
  if items.key?(user_choice)
    # if it is, we increment the balance by the price of the item
    balance += items[user_choice]
  else
    # else show an error message
    puts "Sorry we don't have any #{user_choice} today"
  end
end
# Displaying the total amount
puts "TOTAL: £#{balance}"

######################################################################

############################### STEP 2 ###############################

# Items are stored in a hash
# Each key is the name of the item
# Each value is the price of the item
items = {
  'kiwi' => 1.25,
  'banana' => 0.5,
  'mango' => 4,
  'asparagus' => 9
}

# All the user choices will pushed into an array
# We initialize our cart as an empty array
cart = []

# Greeting the user
puts "------------------------"
puts "Welcome to Le Wagon Shop"
puts "------------------------"

# Displaying the items in our store with their prices
puts "Here are the items in our store:"

# Iterating over the hash and display each item with their price
items.each do |item, price| # item represents each key, price represents each value
  puts "#{item}: £#{price}"
end
puts "--------------------------------"

# Looping until the user wants to quit
loop do
  # Ask the user what item they want and store it in the variable user_choice
  puts "Which item (or 'quit' to checkout)"
  user_choice = gets.chomp

  # If the user enters quit, we break out of the loop
  break if user_choice == 'quit'

  # Checking if the item chosen by the user is in our store
  if items.key?(user_choice)
    # if it is, we ask the user how many of that item do they want and store it in the variable quantity
    puts "How many #{user_choice} do you want?"
    quantity = gets.chomp.to_i

    # We then create a hash that will hold the name of the item and the wanted quantity
    selected_item = {
      name: user_choice,
      quantity: quantity
    }

    # Pushing the hash created above in our cart
    cart.push(selected_item)
  else
    # else show an error message
    puts "Sorry we don't have any #{user_choice} today"
  end
end

# Initialize our balance to 0
balance = 0

# Iterate over our cart to display each selected item with their price and wanted quantity
cart.each do |user_choice|
  # Getting the name of the item
  item_name = user_choice[:name]
  # Getting the quantity of the item
  item_quantity = user_choice[:quantity]
  # Getting the price of the item
  item_price = items[item_name]
  # Calculating the total price
  item_total_price = item_quantity * item_price
  # Incrementing the balance by the item's total price
  balance += item_total_price
  # Displaying the item, price, quantity and total price to the user
  puts "#{item_name}: £#{item_price} x #{item_quantity} = £#{item_total_price}"
end

# Displaying the total amount
puts "TOTAL: £#{balance}"

######################################################################

############################### STEP 3 ###############################

# Items are stored in a hash
# Each key is the name of the item
# Each value is a hash holding the price and availability of an item in our store
items = {
  'kiwi' => {
    price: 1.25,
    availability: 15
  },
  'banana' => {
    price: 0.5,
    availability: 5
  },
  'mango' => {
    price: 4,
    availability: 10
  },
  'asparagus' => {
    price: 9,
    availability: 20
  }
}

# All the user choices will pushed into an array
# We initialize our cart as an empty array
cart = []

# Greeting the user
puts "------------------------"
puts "Welcome to Le Wagon Shop"
puts "------------------------"

# Displaying the items in our store with their prices
puts "Here are the items in our store:"

# Iterating over the hash and display each item with their price
items.each do |item, info| # item represents each key, info represents the hash holding the price and the availability
  puts "#{item}: £#{info[:price]} (available #{info[:availability]})"
end
puts "--------------------------------"

# Looping until the user wants to quit
loop do
  # Ask the user what item they want and store it in the variable user_choice
  puts "Which item (or 'quit' to checkout)"
  user_choice = gets.chomp

  # If the user enters quit, we break out of the loop
  break if user_choice == 'quit'

  # Checking if the item chosen by the user is in our store
  if items.key?(user_choice)
    # if it is, we ask the user how many of that item do they want and store it in the variable quantity
    puts "How many #{user_choice} do you want?"
    quantity = gets.chomp.to_i
    if quantity <= items[user_choice][:availability]
      # We then create a hash that will hold the name of the item and the wanted quantity
      selected_item = {
        name: user_choice,
        quantity: quantity
      }

      # Pushing the hash created above in our cart
      cart.push(selected_item)

      # Updating the store availability for that item
      items[user_choice][:availability] -= quantity
    else
      puts "Sorry we only have #{items[user_choice][:availability]} #{user_choice}"
    end
  else
    # else show an error message
    puts "Sorry we don't have any #{user_choice} today"
  end
end

# Initialize our balance to 0
balance = 0

# Iterate over our cart to display each selected item with their price and wanted quantity
cart.each do |user_choice|
  # Getting the name of the item
  item_name = user_choice[:name]
  # Getting the quantity of the item
  item_quantity = user_choice[:quantity]
  # Getting the price of the item
  item_price = items[item_name][:price]
  # Calculating the total price
  item_total_price = item_quantity * item_price
  # Incrementing the balance by the item's total price
  balance += item_total_price
  # Displaying the item, price, quantity and total price to the user
  puts "#{item_name}: £#{item_price} x #{item_quantity} = £#{item_total_price}"
end

# Displaying the total amount
puts "TOTAL: £#{balance}"

######################################################################

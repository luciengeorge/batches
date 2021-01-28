# TODO: you can build your instacart program here!
# STEP 1
items = {
  'kiwi' => 1.25,
  'banana' => 0.5,
  'mango' => 4,
  'asparagus' => 9
}

puts "--------------------"
puts "Welcome to InstaCart"
puts "--------------------"

puts "In our store today:"
items.each do |item, price|
  puts "#{item}: £#{price}"
end
puts "-------------------"

selected_items = []

loop do
  puts "Which item (or 'quit' to checkout)"
  selection = gets.chomp
  break if selection == 'quit'

  if items[selection]
    selected_items << selection
  else
    puts "Sorry we don't have this item in store"
  end
end

puts "------- BILL -------"
total = 0
selected_items.each do |item|
  total += items[item]
end
puts "TOTAL: £#{total}"
puts "--------------------"

# STEP 2
items = {
  'kiwi' => 1.25,
  'banana' => 0.5,
  'mango' => 4,
  'asparagus' => 9
}

puts "--------------------"
puts "Welcome to InstaCart"
puts "--------------------"

puts "In our store today:"
items.each do |item, price|
  puts "#{item}: £#{price}"
end
puts "-------------------"

selected_items = []

loop do
  puts "Which item (or 'quit' to checkout)"
  selection = gets.chomp
  break if selection == 'quit'

  if items[selection]
    puts "How many?"
    quantity = gets.chomp.to_i
    selected_items << { item: selection, quantity: quantity }
  else
    puts "Sorry we don't have this item in store"
  end
end

puts "------- BILL -------"
total = 0
selected_items.each do |item|
  item_total = items[item[:item]] * item[:quantity]
  total += item_total
  puts "#{item[:item]}: #{item[:quantity]} x £#{items[item[:item]]} = #{item_total}"
end
puts "TOTAL: £#{total}"
puts "--------------------"

# STEP 3
items = {
  'kiwi' => {
    price: 1.25,
    available: 3
  },
  'banana' => {
    price: 0.5,
    available: 10
  },
  'mango' => {
    price: 4,
    available: 7
  },
  'asparagus' => {
    price: 9,
    available: 2
  }
}

puts "--------------------"
puts "Welcome to InstaCart"
puts "--------------------"

puts "In our store today:"
items.each do |item, info|
  puts "#{item}: £#{info[:price]} (#{info[:available]} available)"
end
puts "-------------------"

selected_items = []

loop do
  puts "Which item (or 'quit' to checkout)"
  selection = gets.chomp
  break if selection == 'quit'

  if items[selection]
    puts "How many?"
    quantity = gets.chomp.to_i
    if quantity > items[selection][:available]
      puts "Sorry we don't have enough of #{selection}"
    else
      items[selection][:available] -= quantity
      selected_items << { item: selection, quantity: quantity }
    end
  else
    puts "Sorry we don't have this item in store"
  end
end

puts "------- BILL -------"
total = 0
selected_items.each do |item|
  item_total = items[item[:item]][:price] * item[:quantity]
  total += item_total
  puts "#{item[:item]}: #{item[:quantity]} x £#{items[item[:item]][:price]} = #{item_total}"
end
puts "TOTAL: £#{total}"
puts "--------------------"

# TODO: you can build your christmas list program here!
require_relative 'christmas_list'

puts "------------------------------"
puts "Welcome to your Christmas list"
puts "------------------------------"

gifts = File.exist?('gifts.csv') ? load_gifts : []

loop do
  puts "What do you want to do? [list | add | delete | buy | look up | quit]"
  action = gets.chomp
  case action
  when 'list'
    puts "Here's your Christmas list:"
    display_gifts(gifts)
  when 'add'
    puts "What do you want to add to your list?"
    gift_to_add = gets.chomp
    gifts << { name: gift_to_add, bought: false }
    save_gifts(gifts)
  when 'buy'
    display_gifts(gifts)
    puts "What gift would you like to buy? (Choose a number)"
    index_to_buy = gets.chomp.to_i - 1
    if gifts[index_to_buy]
      gifts[index_to_buy][:bought] = true
      save_gifts(gifts)
      puts "You just bought #{gifts[index_to_buy][:name]}"
    else
      puts "Please enter a valid number"
    end
  when 'look up'
    puts "What do you want to look up?"
    look_up = gets.chomp
    suggestions = look_up_on_etsy(look_up)
    puts "Here's what we found:"
    suggestions.each_with_index do |suggestion, index|
      puts "#{index + 1}. #{suggestion}"
    end
    puts "Which one would you like to add? (Choose a number)"
    to_add = gets.chomp.to_i - 1
    if suggestions[to_add]
      gifts << { name: suggestions[to_add], bought: false }
      save_gifts(gifts)
    else
      puts "Please choose a valid number"
    end
  when 'delete'
    display_gifts(gifts)
    puts "What gift do you want to remove? (Choose a number)"
    index_to_delete = gets.chomp.to_i - 1
    if gifts[index_to_delete]
      puts "#{gifts[index_to_delete]} was successfully removed from your list"
      gifts.delete_at(index_to_delete)
      save_gifts(gifts)
    else
      puts "Please enter a valid number"
    end
  when 'quit'
    break
  end
end

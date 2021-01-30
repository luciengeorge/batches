require_relative 'scraper'
require_relative 'christmas_gifts'

# Welcome the user
puts "-----------------------------------"
puts "Welcome to your Christmas Gift list"
puts "-----------------------------------"

# load the gifts from our CSV file
gifts = load_gifts

# Start looping
loop do
  # Ask the user what they want to do
  user_action = ask_for("Which action [list|add|delete|mark|look up|quit]")
  break if user_action == 'quit' # break out of the loop if the user enters `quit`


  if user_action == 'list' # List all gifts if user enters `list`
    display_gifts(gifts) # call the method to display the list of gifts
  elsif user_action == 'add' # action to add a gift if user enters `add`
    # ask the user for the gift information
    gift_name = ask_for("What gift would you like to add?") # ask what is the name of the gift
    gift_price = ask_for("Great! How much does #{gift_name} cost?") # ask what is the price of the gift
    # create the hash representing the gift with the bought value defaulting to false
    gift = { name: gift_name, price: gift_price, bought: false }
    gifts << gift # pushing the gift in the array of gifts
    save_gifts(gifts) # updating the CSV file with the new gift
  elsif user_action == 'mark' # Mark a gift as bought if user enters `mark`
    display_gifts(gifts) # call the method to display the gifts
    gift_index = ask_for("Which gift would you like to buy? (Choose a number)").to_i - 1 # ask for which gift they want to buy
    if gifts[gift_index] # if they chose a correct number
      gifts[gift_index][:bought] = true # update the value of :bought to true
      save_gifts(gifts) # update the CSV file with the updated gifts
      puts "Congrats on your new purchase!"
    else
      puts "Please choose a valid number" # display an error message if the number chosen is wrong
    end
  elsif user_action == 'look up' # Scrape etsy website if user enters `look up`
    keyword = ask_for("What do you want to search for?") # ask for a keyword to search for
    puts "We're looking...."
    etsy_results = scrape_etsy(keyword) # call the method to scrape the website
    puts "Here's what we found:"
    display_gifts(etsy_results) # display the results we got from scraping
    user_choice = ask_for("Which one do you want to add?").to_i - 1 # ask the user to choose which result they'd like to add to their list
    if etsy_results[user_choice] # if they chose a correct number
      gifts << etsy_results[user_choice] # we push the result to the gift list
      save_gifts(gifts) # we save the new gift to the CSV file
    else
      puts "Please enter a valid number" # display an error message if the number chosen is wrong
    end
  elsif user_action == 'delete' # delete action if user enters `delete`
    display_gifts(gifts) # display the gifts we have
    gift_index = ask_for("Which gift would you like to delete?").to_i - 1 # ask which item they would want to delete
    if gifts[gift_index] # if they chose a correct number
      gifts.delete_at(gift_index) # delete the gift from the list using the index
      save_gifts(gifts) # save the updated list to the CSV file
      puts "Gift successfully deleted"
    else
      puts "Please choose a valid number" # display an error message if the number chosen is wrong
    end
  end
end

require 'csv'

# method to display the gifts
def display_gifts(gifts)
  if gifts.empty? # => gifts == []
    puts "Sorry there are no gifts yet" # show a message to the user if list of gifts is empty
  else # if we have some gifts
    # iterate over each gift
    gifts.each_with_index do |gift, index|
      # gift => { name: 'laptop', price: 1000 }
      # if gift[:bought] == true
      #   mark = 'X'
      # else
      #   mark = ' '
      # end
      mark = gift[:bought] ? 'X' : ' ' # condition to display or not the X based on whether the gift is bought or not
      puts "#{index + 1}. [#{mark}] #{gift[:name]} - £#{gift[:price]}" # print each gift nicely
    end
  end
end

# method to ask for a user input
def ask_for(question)
  puts question # display what we want to ask
  return gets.chomp # get the user input
end

# method to load the gifts from the csv file
def load_gifts
  # col_sep => determines by which character we will separate each column in the file
  # quote_char => determines the quotes surrounding each value in the file
  # headers => tells the CSV library that the first row is just the headers
  # this last option will allow us to use `row` as a hash
  csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
  filepath = 'lib/gifts.csv' # filepath is dependent from where you are located in your terminal
  return [] unless File.exist?(filepath) # return an empty list if the gifts.csv file doesn't exist

  gifts = [] # initialize an empty gift list
  CSV.foreach(filepath, csv_options) do |row|
    # each row is a Row object but can be treated either as a hash or an array
    # so you can read values either with indexes or with column names
    # create info hash to be pushed in the gifts array
    info = {
      name: row['name'], # grabs the name of the gifb
      price: row['price'].to_i, # grabs the price of the gift and converts it to an integer (might be better to convert it to a float since we can have cents)
      bought: row['bought'] == 'true' # grabs the value that says whether or not the gift was bought and converts it to a boolean
    }
    gifts << info # push the info hash into the gifts array
  end
  return gifts # return the filled gifts array
end

def save_gifts(gifts)
  # force_quotes will force each value to be surrounded by quotes
  csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
  filepath = 'lib/gifts.csv' # path to our csv file

  CSV.open(filepath, 'wb', csv_options) do |csv| # opens the csv file with 'wb' option to say we want to modify the file
    csv << ['name', 'price', 'bought'] # first pushes the headers
    gifts.each do |gift| # iterate over the gifts array
      csv << [gift[:name], gift[:price], gift[:bought]] # push each gift into the csv file
    end
  end
end

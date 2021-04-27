require 'csv'

# TODO - let's read/write data from beers.csv
filepath = 'data/beers.csv'

## without csv options
counter = 0 # => get rid of the headers

CSV.foreach(filepath, csv_options) do |row|
  # row is an array
  # ["Edelweiss","White","Austria"]
  if counter > 0 # if this is not the first row
    name = row[0]
    appearance = row[1]
    origin = row[2]

    puts "name: #{name}, appearance: #{appearance}, origin: #{origin}"
  end

  counter += 1
end

## with csv options
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# CSV.foreach(filepath, **csv_options) do |row| # => for ruby 3.0.0
CSV.foreach(filepath, csv_options) do |row|
  # row is an array
  # ["Edelweiss","White","Austria"]
  name = row['Name']
  appearance = row['Appearance']
  origin = row['Origin']

  puts "name: #{name}, appearance: #{appearance}, origin: #{origin}"
end

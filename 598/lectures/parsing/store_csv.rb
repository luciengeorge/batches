require 'csv'

filepath = 'data/new_beers.csv'
# options for the csv file
csv_options = { col_sep: ',', quote_char: '"', force_quotes: true }
beers = [
  {
    name: "Edelweiss",
    appearance: "White",
    origin: "Austria"
  },
  {
    name: "Cuvée des Trolls",
    appearance: "Blond",
    origin: "Belgium"
  }
]

CSV.open(filepath, 'wb', csv_options) do |csv|
  # push the headers first
  csv << [ "Name", "Appearance", "Origin" ]

  # iterate over the beers to push each beer as an array in the csv
  beers.each do |beer|
    csv << [ beer[:name], beer[:appearance], beer[:origin] ]
  end
end

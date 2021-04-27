require 'json'

# TODO - let's read/write data from beers.json
filepath = 'data/beers.json'

serialized_beers = File.read(filepath)
json = JSON.parse(serialized_beers)

# display the name of my first beer
first_beer = json['beers'][0]['name']

# p first_beer


# display all the origins sorted alphabetically, uniq results

# 1. I want to exctract the array of beers
beers_array = json['beers']
# 2. iterate over it with some iterator
## with .map
origins = beers_array.map do |beer|
  # each beer => {
  #   "name": "Edelweiss",
  #   "appearance": "White",
  #   "origin": "Austria"
  # }
  # 3. get the origin of each beer
  beer['origin']
end

## with .each
origins = []
beers_array.each do |beer|
  origins << beer['origin']
end
# 4. sort it and keep uniq values
p origins.sort.uniq

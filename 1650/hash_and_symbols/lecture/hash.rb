# create a new hash
hash = {}
# create a new array
array = []

# a hash is a data type of key value pairs
paris = {
  #  key         value
  "country" => "France",
  "population" => 2211000,
}

# CRUD

# CREATE
paris["monument"] = "Eiffel Tour"

# READ
# we read values by accessing them through their associated keys
p paris["country"]
p paris["population"]

# UPDATE
paris["population"] = 2211001

# DELETE
paris.delete('population')

# Iteration
paris.each do |key, value|
  puts "Paris' #{key} is #{value}"
end


# Custom methods
# check if a key exists in the hash
p paris.key?('country')
p paris.key?('population')

# retrieve all the keys in the hash
p paris.keys

# retrieve all the values in the hash
p paris.values


# When dealing with reach data, hashes are more appropriate than arrays
cities = [
  ["London", "England", "Big Ben"],
  ["Paris", "France", "Eiffel Tour"]
]

# Trying to access is a nightmare. WTH is 1 and 2 below???? 🤔
puts cities[1][2]

# with hashes, we can access Eiffel Tour in a much easier way
cities = {
  "Paris" => {
    "country" => "France",
    "monument" => "Eiffel Tour"
  },
  "London" => {
    "country" => "England",
    "monument" => "Big Ben"
  }
}

p cities["Paris"]["monument"]


# Hashes with symbols
cities = {
  :Paris => {
    :country => "France",
    :monument => "Eiffel Tour"
  },
  :London => {
    :country => "England",
    :monument => "Big Ben"
  }
}

cities = {
  Paris: {
    country: "France",
    monument: "Eiffel Tour"
  },
  London: {
    country: "England",
    monument: "Big Ben"
  }
}

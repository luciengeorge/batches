require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/ssaunier'

# read data from the url
# data will come back as plain text
data = URI.open(url).read

# parse the data to convert it to a Hash or Array (depends on how the data is structures in the API)
json = JSON.parse(data)

# dig through the data to extract the wanted info
name = json['name']
number = json['public_repos']

p "#{name} has #{number} repositories"

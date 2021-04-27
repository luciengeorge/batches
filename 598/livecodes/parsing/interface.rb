require 'yaml'
require_relative 'scraper'
# call our methods
# save the movies in the movies.yml
puts "Fetching movie URLs"
urls = fetch_movies_url
puts "URLs fetched."

# iterate over all urls and scrape each movie at once
# store the result in the `movies` variable
movies = urls.map do |url|
  scrape_movie(url)
end

filepath = 'data/movies.yml'

# open the file
File.open(filepath, 'wb') do |file|
  # convert the array of hashes into a yaml format and store in the movies.yml file
  file.write(movies.to_yaml)
end

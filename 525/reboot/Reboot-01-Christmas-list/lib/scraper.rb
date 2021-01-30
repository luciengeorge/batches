require 'nokogiri'
require 'open-uri'

# method to scrape etsy. `keyword` is the keyword entered by the user
def scrape_etsy(keyword)
  url = "https://www.etsy.com/search?q=#{keyword}" # url to the webpage to be scraped

  # opens the webpage and reads it
  html_page = open(url).read # => File.open(filepath)
  doc = Nokogiri::HTML(html_page) # parses and analyzes the webpage

  # suggestions = []
  # doc.search('.v2-listing-card__info').first(5).each do |element|
  #   name = element.search('h3.text-body').text.strip
  #   price = element.search('.currency-value').text.strip
  #   info = { name: name, price: price }
  #   suggestions << info
  # end

  # search for the right info on the webpage
  suggestions = doc.search('.v2-listing-card__info').first(5).map do |element|
    name = "#{element.search('h3.text-body').text.strip[0..20]}..." # grab the name of each result and remove trailing spaces
    price = element.search('.currency-value').text.strip # grab the price of each results and remove trailing spaces
    info = { name: name, price: price, bought: false } # build the hash representing each gift
    info
  end

  return suggestions # returns the whole array of suggestions
end

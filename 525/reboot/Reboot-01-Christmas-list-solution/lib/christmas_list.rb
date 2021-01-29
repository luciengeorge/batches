require 'csv'
require 'nokogiri'
require 'open-uri'

def display_gifts(gifts)
  gifts.each_with_index do |gift, index|
    mark = gift[:bought] ? 'X' : ' '
    puts "[#{mark}] #{index + 1}. #{gift[:name]}"
  end
end

def look_up_on_etsy(look_up)
  url = "https://www.etsy.com/search?q=#{look_up}"
  puts "We're looking..."
  page = open(url).read
  document = Nokogiri::HTML(page)
  suggestions = document.search('.v2-listing-card__info h3').map do |element|
    element.text.strip
  end
  suggestions.first(5)
end

def save_gifts(gifts)
  csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
  filepath = 'gifts.csv'

  CSV.open(filepath, 'wb', csv_options) do |csv|
    csv << ['name', 'bought']
    gifts.each do |gift|
      csv << [gift[:name], gift[:bought]]
    end
  end
end

def load_gifts
  csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
  filepath    = 'gifts.csv'
  gifts = []
  CSV.foreach(filepath, csv_options) do |row|
    gifts << { name: row['name'], bought: row['bought'] == 'true' }
  end
  gifts
end

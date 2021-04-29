
# class
Time.now # class method

require 'json'

# class
JSON.parse('{}') # class method

require_relative 'restaurant'

pret = Restaurant.new('pret', 20, 'london', 'sandwiches')

# instance
pret.name # instance method
Restaurant.name

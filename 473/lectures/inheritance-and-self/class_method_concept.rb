# class
Time.now # .now => class method

# class
require 'json'
JSON.parse('{}') # .parse => class method

# class
Restaurant.new # .new => class method
hoxton = Restaurant.new('100 hoxton', 'Hoxton', 30, 'Japanese')

# instance
hoxton.name # .name => instance method

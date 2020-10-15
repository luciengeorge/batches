require_relative 'chef'
require_relative 'restaurant'

hoxton = Restaurant.new('100 hoxton', 'Hoxton', 30, 'Japanese', 'gordon ramsey')
gordon = Chef.new('gordon ramsey', hoxton)

p gordon.restaurant

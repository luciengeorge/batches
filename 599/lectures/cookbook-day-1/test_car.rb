require_relative 'car'

porsche = Car.new('porsche', 'red')

p porsche
porsche.paint('blue')
p porsche

p Car.number_of_wheels

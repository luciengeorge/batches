# 1. create an array with Simba, Nala, Timon, Pumba
# 2. iterate over it
# 3. display the sounds that each one makes

# 4 instances
# simba and nala => Lion
# timon => Meerkar
# pumba => Warthog

require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

simba = Lion.new('Simba')
nala = Lion.new('Nala')
timon = Meerkat.new('Timon')
pumba = Warthog.new('Pumba')

animals = [
  simba,
  nala,
  timon,
  pumba
]

animals.each do |animal|
  puts animal.talk
end

puts simba.eat('a gazelle')

p simba.myself

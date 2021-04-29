# In another Ruby file, create an array with Simba, Nala, Timon & Pumbaa, iterate over it and puts the sound each animal makes

require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

# simba => Lion
simba = Lion.new('Simba')
# nala => Lion
nala = Lion.new('Nala')
# Timon => Meerkat
timon = Meerkat.new('Timon')
# Pumbaa => Warthog
pumbaa = Warthog.new('Pumbaa')

animals = [simba, nala, timon, pumbaa]

animals.each do |animal|
  puts animal.talk
end

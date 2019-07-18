# interface.rb
require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

animals = []

animals << Lion.new("Simba")
animals << Lion.new("Nala")
animals << Meerkat.new("Timon")
animals << Warthog.new("Pumba")

animals.each { |animal| puts animal.talk }

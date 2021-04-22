range = 0..10

p range.to_a

range2 = 0...10

p range2.to_a

for number in range
  p number
end

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

for number in 0..(musicians.length - 1)
  puts "#{number + 1}. #{musicians[number]}"
end

index = 1
for musician in musicians
  puts "#{index}. #{musician}"
  index += 1
end

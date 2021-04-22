musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

number_of_musicians = musicians.count do |musician|
  musician.start_with?('R') # => musician[0] == 'R'
end

p number_of_musicians

# same with .each
count = 0
musicians.each do |musician|
  if musician.start_with?('R')
    count += 1
  else
    # do nothing
  end
end

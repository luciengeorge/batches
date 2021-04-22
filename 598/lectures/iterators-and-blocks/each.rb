musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

musicians.each do |musician|
  puts musician
end

# musicians.each { |musician| puts musician } # => one line sentence

musicians.each_with_index do |musician, index|
  puts "#{index + 1}. #{musician}"
end

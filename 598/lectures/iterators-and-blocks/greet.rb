def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  greeting = yield(full_name) # => "Bonjour, John LENNON"
  return greeting
end

greeting1 = greet('john', 'lennon') do |full_name|
  "Bonjour, #{full_name}"
end
p greeting1

greeting2 = greet('david', 'gilmour') do |full_name|
  "Hi, #{full_name}"
end
puts greeting2

greeting3 = greet('mark', 'knopfler') do |full_name|
  "Hola, #{full_name}"
end
puts greeting3

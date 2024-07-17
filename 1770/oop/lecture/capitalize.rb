require 'pry-byebug'

def full_name(first_name, last_name)
  capitalized_first_name = first_name.capitalize
  capitalized_last_name = last_name.capitalize
  "#{capitalized_first_name} #{capitalized_last_name}"
end

puts full_name('john', 'doe')

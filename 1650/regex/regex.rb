puts "Please enter your phone number"
phone_number = gets.chomp
# starts with +33 8 digits +330764537284 +33764537284 +33 07 64 53 72 84 +33 7 64 53 72 84
if phone_number.match?(/\+33 *0?\d *( *\d{2}){4}/)
  puts "You entered a valid number"
else
  puts "Try again"
end

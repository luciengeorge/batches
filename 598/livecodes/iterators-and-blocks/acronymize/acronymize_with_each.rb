def acronymize(sentence)
  words = sentence.split(" ")
  first_letters = []
  words.each do |word|
    first_letters << word[0]
  end
  first_letters.join.upcase
end

puts acronymize("") == ""
puts acronymize("Frequently Asked Questions") == "FAQ"
puts acronymize("AWAY FROM KEYBOARD") == "AFK"
puts acronymize("working from home") == "WFH"

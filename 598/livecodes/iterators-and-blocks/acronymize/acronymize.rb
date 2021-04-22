# def acronymize(sentence)
#   # 1. split the sentence into an array
#   words = sentence.split
#   # 2. need to initialize an empty array
#   acronyms_array = []
#   # 3. iterate over the array
#   words.each do |word|
#     # 4. grab the first letter of each word in the array
#     # 5. upcase the first letter
#     first_letter = word[0].upcase
#     # 6. push the letters in the array
#     acronyms_array << first_letter
#   end
#   # 7. join the array
#   acronym = acronyms_array.join
#   # 8. return the result
#   return acronym
# end

def acronymize(sentence)
  # 1. split the sentence into an array
  # 2. iterate over the array with .map
  acronyms_array = sentence.split.map do |word|
    # 3. grab first letter and upcase
    word[0].upcase
  end
  # 4. join the array
  acronyms_array.join
end

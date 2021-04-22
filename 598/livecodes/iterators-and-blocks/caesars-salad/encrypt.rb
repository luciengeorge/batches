def encrypt(sentence)
  # 1. create a range of the alphabet
  alphabet = ('A'..'Z').to_a
  # 2. create an array of characters
  # 3. iterate over it with .map
  chars = sentence.chars.map do |char|
    # 4. grab the index in alphabet of the letter
    index = alphabet.index(char)
    if index.nil?
      char
    else
      # 5. grab the shifted letter alphabet[index - 3]
      alphabet[index - 3]
    end
  end
  # 6. join the array of characters
  chars.join
end

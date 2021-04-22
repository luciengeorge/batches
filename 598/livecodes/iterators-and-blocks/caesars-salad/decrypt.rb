def decrypt(sentence)
  # 1. create a range of the alphabet
  alphabet = ('A'..'Z').to_a
  # 2. create an array of characters
  # 3. iterate over it with .map
  chars = sentence.chars.map do |char|
    # 4. grab the index in the alphabet of the letter
    index = alphabet.index(char)
    if index.nil?
      # p "index is nil: #{char}"
      char
    else
      # p "index is not nil: '#{char}' becomes '#{alphabet[(index + 3) % alphabet.size]}'"
      alphabet[(index + 3) % alphabet.size]
    end
  end
  chars.join
end

# decrypt("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")

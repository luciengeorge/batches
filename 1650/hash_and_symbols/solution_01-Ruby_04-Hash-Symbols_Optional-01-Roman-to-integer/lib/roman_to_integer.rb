ROMAN_NUM = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def roman_to_integer(roman_string)
  sum = 0

  ROMAN_NUM.each_key do |key|
    while roman_string.start_with?(key)
      sum += ROMAN_NUM[key]
      roman_string.sub!(key, "")
    end
  end

  sum
end

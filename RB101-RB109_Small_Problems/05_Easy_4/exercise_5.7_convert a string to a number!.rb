# Exercise 5.7

# My first attempt. Maybe #ord method is cheating?

def string_to_integer(string)
  array = string.chars.map { |char| char = char.ord - 48 }
  array.inject{ |value, digit| value * 10 + digit}
end

p string_to_integer('4321')
p string_to_integer('570')
p string_to_integer('9563')
p string_to_integer('9402')

# Basically copied from the example answer but with #inject

DIGITS = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  digits.inject { |value, digit| value * 10 + digit}
end

p string_to_integer('4321')
p string_to_integer('570')
p string_to_integer('9563')
p string_to_integer('9402')

# Further Exploration: Write a hexadecimal_to_integer method that converts a string 
# representing a hexadecimal number to its integer value.

HEX_DIGITS = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
  "A" => 10, "B" => 11, "C" => 12, "D" => 13, "E" => 14, "F" => 15
}

def hexadecimal_to_integer(string)
  digits = string.upcase.chars.map { |char| HEX_DIGITS[char] }
  digits.inject { |value, digit| value * 16 + digit}
end

p hexadecimal_to_integer('4D9f')
# Exercise 5.7

NUMBERS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
}

HEX_NUMBERS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "A" => 10,
  "B" => 11,
  "C" => 12,
  "D" => 13,
  "E" => 14,
  "F" => 15
}

def string_to_integer(string)
  chars_arr = string.chars.map { |char| NUMBERS[char] }
  integer = 0
  chars_arr.each { |num| integer = 10 * integer + num}
  integer
end

#p string_to_integer('4321') #== 4321
#p string_to_integer('570') #== 570

# Further Exploration

def hexadecimal_to_integer(string)
  chars_arr = string.chars.map { |char| HEX_NUMBERS[char.upcase] }
  hex_arr = []
  chars_arr.reverse.each_with_index do |char, index|
    hex_arr << char * 16 ** index
  end
  hex_arr.sum
end

p hexadecimal_to_integer('4D9f') #== 19871

def hexadecimal_to_integer_with_inject(string)
  chars_arr = string.chars.map { |char| HEX_NUMBERS[char.upcase] }
  chars_arr.inject { |sum, num| sum = sum * 16 + num }
end

p hexadecimal_to_integer_with_inject('4D9f') #== 19871

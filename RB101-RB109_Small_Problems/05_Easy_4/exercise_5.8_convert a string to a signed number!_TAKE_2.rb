# Exercise 8.8

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

def string_to_integer(string)
  chars_arr = string.chars.map { |char| NUMBERS[char] }
  integer = 0
  chars_arr.each { |num| integer = 10 * integer + num}
  integer
end

def string_to_signed_integer(string)
  negative = true if string.start_with?("-")
  string = string[1..-1] if string.start_with?(/[-+]/)
  negative ? -string_to_integer(string) : string_to_integer(string)
end

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')

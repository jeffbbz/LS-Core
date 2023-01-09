# Exercise 5.9

DIGITS = {
  0 => "0",
  1 => "1",
  2 => "2",
  3 => "3",
  4 => "4",
  5 => "5",
  6 => "6",
  7 => "7",
  8 => "8",
  9 => "9"
}

def integer_to_string(integer)
  integer.digits.reverse.map { |digit| DIGITS[digit] }.join
end

p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'

def integer_to_string_without_join(integer)
  string_arr = integer.digits.reverse.map { |digit| DIGITS[digit] }
  string_arr.each_with_object("") { |char, string| string << char}
end

p integer_to_string_without_join(4321) #== '4321'
p integer_to_string_without_join(0) #== '0'
p integer_to_string_without_join(5000) #== '5000'

def integer_to_string_without_join_with_inject(integer)
  integer.digits.reverse.map { |digit| DIGITS[digit] }.inject(:+)
end

p integer_to_string_without_join_with_inject(4321) #== '4321'
p integer_to_string_without_join_with_inject(0) #== '0'
p integer_to_string_without_join_with_inject(5000) #== '5000'
# Exercise 5.9

DIGITS = {
  0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 
  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9",
}

def integer_to_string(integer)
  string = integer.digits.map { |digit| DIGITS[digit]}
  string.inject { |char, string| string += char }
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)


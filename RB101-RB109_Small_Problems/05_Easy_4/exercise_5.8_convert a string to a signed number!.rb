# Exercise 8.8

DIGITS = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
  "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
}

def string_to_signed_integer(string)
  digits = string.chars
  first = digits.first
  if DIGITS.member?(first)
    digits.map! { |char| DIGITS[char] }
    digits.inject { |value, digit| value * 10 + digit}
  else
    digits.shift
    digits.map! { |char| DIGITS[char] }
    digits = digits.inject { |value, digit| value * 10 + digit}
    first == "-" ? -digits : digits
  end
end

# def string_to_signed_integer(string)
#   digits = string.chars
#     if digits.first == "+" 
#       digits.shift
#       digits.map! { |char| DIGITS[char] }
#       digits.inject { |value, digit| value * 10 + digit}
#     elsif digits.first == "-"
#       digits.shift
#       digits.map! { |char| DIGITS[char] }
#       digits = digits.inject { |value, digit| value * 10 + digit}
#       digits * -1
#     else
#       digits.map! { |char| DIGITS[char] }
#       digits.inject { |value, digit| value * 10 + digit}
#     end
# end

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')
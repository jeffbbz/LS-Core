#Exercise 5.10

DIGITS = {
  0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 
  5 => "5", 6 => "6", 7 => "7", 8 => "8", 9 => "9",
}

def signed_integer_to_string(integer)
  if integer.negative?
    integer = -integer
    string = integer.digits.map { |digit| DIGITS[digit]}
    string = string.inject { |char, string| string += char }
    "-" << string
  else
    string = integer.digits.map { |digit| DIGITS[digit]}
    string = string.inject { |char, string| string += char }
    string != "0" ? "+" << string : "0"
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)

# Using previous method 1

def signed_integer_to_string(integer)
  if integer.negative?
    string = "-#{integer_to_string(-integer)}"
  else
    string = integer_to_string(integer)
    string != "0" ? "+" << string : "0"
  end
end

def integer_to_string(integer)
  string = integer.digits.map { |digit| DIGITS[digit]}
  string.inject { |char, string| string += char }
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)

# Using previous method 2

def signed_integer_to_string(integer)
  if integer.negative? then "-#{integer_to_string(-integer)}"
  elsif integer == 0 then integer_to_string(integer)
  else "+#{integer_to_string(integer)}"
  end
end

def integer_to_string(integer)
  string = integer.digits.map { |digit| DIGITS[digit]}
  string.inject { |char, string| string += char }
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)




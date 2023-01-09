#Exercise 5.10

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

def signed_integer_to_string(integer)
  string = integer < 0 ? integer_to_string(-integer) : integer_to_string(integer)
  
  case integer <=> 0
  when -1 then "-" + string
  when +1 then "+" + string
  else               string
  end
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'
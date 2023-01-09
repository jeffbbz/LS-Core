# Small Problems > Easy 8 > Reverse the Digits In a Number

# to string then reverse then to integer

def reversed_number(number)
  number.to_s.reverse.to_i
end

# to an array of digits then to string then to integer

def reversed_number(number)
  number.digits.join.to_i
end

def reversed_number(number)
  number.digits.sort_by { |num| -(num.to_s) }
end


p reversed_number(12345) #== 54321
p reversed_number(12213) #== 31221
p reversed_number(456) #== 654
p reversed_number(12000) #== 21 # No leading zeros in return value!
p reversed_number(12003) #== 30021
p reversed_number(1) #== 1
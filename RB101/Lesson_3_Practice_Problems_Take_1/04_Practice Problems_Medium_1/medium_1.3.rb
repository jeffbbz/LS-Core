# RB101 Lesson 3: Practice Problems - Medium 1.3

# more complicated than neccessary probably

def factors(number)
  divisor = number
  factors = []
  loop do
    if number > 0
      factors << number / divisor if number % divisor == 0
      divisor -= 1
      break if divisor == 0
    else
      puts "Please use a non-zero positive integer"
      break
    end
  end
  factors
end

p factors(40)
p factors(8)
p factors(0)
p factors(-2)

# more simply with while loop

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(40)
p factors(8)
p factors(0)
p factors(-2)

# Bonus 1: What is the purpose of the number % divisor == 0 ?

# It determines if the result of number/division has no remainder, and therefore is an integer

# Bonus 2: What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?

# Line 8 in the original example and 18 and 35 in my examples are an explicit return
# of the factors array, so that that the method will return the desired value. Without
# this the return value is the vlaue of the last statement executed, which would be nil.
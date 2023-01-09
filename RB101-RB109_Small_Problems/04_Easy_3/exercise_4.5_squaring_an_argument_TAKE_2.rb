# Small Problems > Easy 3 > Squaring an Argument

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

# Further Exploration

def power(num, power)
  (multiply(num, num) / num) ** power
end

def power2(num, power)
  input_num = num
  (power - 1).times { num = multiply(num, input_num) }
  num
end

p power(5, 3)
p power2(5, 3)
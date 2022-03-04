# #Exercise 4.5

def multiply(num_1, num_2)
  num_1 * num_2
end

def square(num)
  multiply(num, num)
end

def power(num, power)
  (multiply(num, num) / num ) ** power
end

p square(5) == 25
p square(-8) == 64

p power(2, 3) == 8

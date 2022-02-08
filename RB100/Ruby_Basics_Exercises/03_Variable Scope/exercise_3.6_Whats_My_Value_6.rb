#Exercise 3.6

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# `my_value': undefined local variable or method `a' for main:Object (NameError)
#Exercise 3.2

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# still puts 7

a = 7

def my_value(a)
  a += 10
	puts a
end

my_value(a)

# a = 17 here because we are puts the local a defined within the method.
# but the other a defined outside the method is still 7
#Exercise 9

for i in 1..100
  puts i if i.odd?
end

# or

for i in 1..100
  puts i if i % 2 != 0
end

# Explanation

# Line 3-5 is a for loop which iniates the local variable i to equal each element of the collection
# found in the range 1-100 inclusive of 100. Line 4 invokes puts on the i if the the result of
# the method odd? invoked on the value of i returns the boolean true. Then it exits the loop.
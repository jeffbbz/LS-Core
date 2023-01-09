#Exercise 5

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter == 5
end

# Or also:

say_hello = true

while say_hello
  5.times { puts 'Hello!' }
  say_hello = false
end

# Code Explanation

# On line 3, the local variable say_hello is initialized, referencing the boolean value true.
# On line 4, a local variable counter is initialized, referencing the integer object 0
# Lines 6-10 is a while loop. The while loop is given the condition that if the value of the variable
# say_hello is truthy the loop will execute and if its value is falsy it will stop. At first
# It's value is true, which is a truthy value, and so it executes. It prints Hello to console 
# with the puts method and then incremenents the the value of the counter (reassigns counter to
# reference the integer object 1 greater than its current self). The break condition for the while
# loop is that if the counter variable references the integer object 5 and its value is therefore
# equal to 5, say_hello variable will be reasigned to the boolean value false and the the while
# loop will exit because false is a falsy value.
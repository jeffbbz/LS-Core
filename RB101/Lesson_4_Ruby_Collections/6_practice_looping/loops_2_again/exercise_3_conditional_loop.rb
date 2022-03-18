# Exercise 3

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processed!"
end

# Explanation of Code

# On line 3, a local variable process_the_loop is intiated to reference the boolean values (either
# true or false) returned by calling the Array#sample method. Lines 5-12 are an if/else statement. if
# process_the_loop is truthy then it will begin a loop. That loop will output a string to
# the console and then execute the break statement and exit the loop. If process_the_loop is
# falsy then it will output the other string on line 11 to the console.


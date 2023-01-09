# Exercise 4

loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i
  
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer, Try again!"
  end
end

# or

loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i
  
  if answer == 4
    puts "That's correct!"
    break
  end
    
  puts "Wrong answer, Try again!"
end



# Code Explantion

# Lines 17-27 are a loop statement. Line 18 calls puts to print a question string to the console.
# on line 19 the local variable answer is initialized and set to reference the value stored by calling
# gets on the user input string object. the String#to_i method is called on that to return an integer.
# THis integer object is what is referenced by variable answer. Line 21 creates an if condition. if
# the value referenced by answer variable is equal to 4 the string is output to console, the
# break is executed and the loop is exited. If not, the other string is printed to console and the loop
# begins to iterate again.

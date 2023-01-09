#Exercise 4

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes"
  puts "You said '#{answer}'. You need to say 'yes' if you wanna stop..."
end

# Code Explantion

# On line 3 a loop is created. The loop iterates over its block of code until the break condition
# on line 6 is met (if the user answers "yes"). First the block outputs the string to the console
# and then waits for the user to provide an answer. The string that the user provides has the 
# gets.chomp methods called on it and the string object value is assigned to the variable answer.
# If the value referenced by answer is not "yes" then the loop continues to iterate, with the 
# warning string output to console.
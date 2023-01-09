# #Exercise 3.5

print "What's your name? "
name = gets.chomp

name.end_with?("!") ? (puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?") : 
                      (puts "Hello #{name}.")



# Further Exploration

print "What's your name? "
name = gets.chomp!

name.end_with?("!") ? (puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?") : 
                      (puts "Hello #{name}.")


# Take 2

print "What is your name? "
name = gets.chomp
name.end_with?("!") ? (puts "HELLO #{name.upcase}") : 
                      (puts "Hello #{name}.") 

# Further Exploration

print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
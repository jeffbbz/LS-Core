# #Exercise 3.5

print "What's your name? "
name = gets.chomp

name.end_with?("!") ? (puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?") : 
                      (puts "Hello #{name}.")



# Further Exploration

# print "What's your name? "
# name = gets.chomp!

# name.end_with?("!") ? (puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?") : 
#                       (puts "Hello #{name}.")

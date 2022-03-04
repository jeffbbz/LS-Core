# Exercise 4.3

puts "Please input a word or words:"
input = gets.chomp

puts "There are #{input.delete(" ").length} characters in \"#{input}\"."

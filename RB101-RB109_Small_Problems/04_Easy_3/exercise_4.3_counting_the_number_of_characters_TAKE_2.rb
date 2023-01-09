# Exercise 4.3

puts "Please write word or mutliple words:"
input = gets.chomp

count = input.chars.delete_if { |e| e == " " }.length

puts "There are #{count} characters in \"#{input}\"."

# or shorter version:

puts "Please write word or mutliple words:"
input = gets.chomp

count = input.delete(" ").length

puts "There are #{count} characters in \"#{input}\"."
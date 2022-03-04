#Exercise 3.1

puts "What name do you want?"
name = gets.chomp
age = rand(20..200)

name == '' ? (puts "Terry is #{age} years old!") : (puts "#{name} is #{age} years old!")
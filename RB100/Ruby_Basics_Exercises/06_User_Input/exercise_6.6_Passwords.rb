#Exercise 6.6

PASSWORD = "carrot"

loop do
  puts ">> Please enter your password:"
  input = gets.chomp
  break if input == PASSWORD
  puts ">> Try again!"
end

puts "Hello, pal!"

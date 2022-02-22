#Exercise 6.7

PASSWORD = "carrot"
USER_NAME = "Todd"

loop do
  puts ">> Please enter your user name:"
  usr_name = gets.chomp
  puts ">> Please enter your password:"
  usr_pass = gets.chomp
  break if usr_pass == PASSWORD && usr_name == USER_NAME
  puts ">> Authentication Failed. Incorrect user name or password"
end

puts "Hello, pal!"
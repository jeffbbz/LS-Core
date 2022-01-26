#Exercise 4.3

puts "Enter number between 0-100"
number = gets.chomp.to_i

case
  when number < 0 then puts "Hey, keep it between 0-100!"
  when number < 51 then puts "That's between 0-50!"
  when number < 101 then puts "That's between 51-100!"
  else puts "That's over 100!"
end
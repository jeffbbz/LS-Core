# Exercise 3.3

print "What is the bill amount? "
bill = gets.chomp.to_f

print "what percent tip? "
tip_percent = gets.chomp.to_f

tip = (bill * (tip_percent / 100)).round(2)
total = bill + tip

puts "The tip is $#{(format('%.2f', tip))}"
puts "The total is $#{(format('%.2f', total))}"

# Take 2

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = bill * (tip_percent / 100)
total =  bill + tip

puts "The tip is: #{format("$%.2f", tip)}"
puts "The total is #{format("$%.2f", total)}"
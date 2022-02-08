#Exercise 6.5

number = nil

loop do
  puts ">> How many lines you want? Enter 3 or more:"
  number = gets.chomp.to_i
  break if number >= 3
  puts ">> #{number}?! No way! We need more lines!"
end

number.times { puts "Launch School is the best!" }
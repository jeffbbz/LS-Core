#Exercise 6.9

loop do
  puts ">> How many lines you want? Enter 3 or more (or Q to quit):"
  number = gets.chomp
  if number.upcase == "Q"
    break
  elsif number.to_i >= 3
    number.to_i.times { puts "Launch School is the best!" }
  else
    puts ">> #{number}?! No way! We need more lines!"
  end
end

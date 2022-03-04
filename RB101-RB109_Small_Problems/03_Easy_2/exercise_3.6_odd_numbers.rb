#Exercise 3.6

numbers = []

1.upto(99) {|i| numbers << i }

numbers.each do |num|
  puts num if num.odd?
end

# # a slightly different way

numbers = (1..99).to_a

numbers.select! {|num| num.odd? }

puts numbers

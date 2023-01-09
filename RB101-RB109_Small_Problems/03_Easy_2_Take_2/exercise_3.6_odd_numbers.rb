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

# Take 2

range = Range.new(1, 99).to_a
range.each { |num| puts num if num.odd? }

# or

num = 1
while num <= 99
  puts num
  num += 2
end

# Further Exploration

odds = (1..99).select { |num| num.odd? }
puts odds

# or

1.upto(99) { |num| puts num if num.odd? }

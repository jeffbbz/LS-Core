#Exercise 3.7

numbers = []

1.upto(99) {|i| numbers << i }

numbers.each do |num|
  puts num if num.even?
end

# different version

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

# Take 2

range = Range.new(1, 99).to_a
range.each { |num| puts num if num.even? }

# or

num = 2
while num < 99
  puts num
  num += 2
end

# Further Exploration

odds = (1..99).select { |num| num.even? }
puts odds

# or

1.upto(99) { |num| puts num if num.even? }
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
#Exercise 2.9

def sum(integer)
  integer.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# #-----Also works------#

# def sum(integer)
#   p integer.digits.inject(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# #-----LS Example 1------#

# def sum(integer)
#   sum = 0
#   numbers = integer.to_s.chars
#   numbers.each do |num|
#     sum += num.to_i
#   end
#   sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# #-----LS Example 2------#

# def sum(integer)
#   integer.to_s.chars.map(&:to_i).reduce(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
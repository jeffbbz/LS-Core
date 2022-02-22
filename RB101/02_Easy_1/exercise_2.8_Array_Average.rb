#Exercise 2.8

def average(integers)
  sum = integers.sum
  sum / integers.count
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

#-----or even shorter-----#

def average(integers)
  integers.sum / integers.count
end

# #-----or LS example-----#

# def average(integers)
#   sum = integers.reduce { |sum, number| sum + number }
#   sum / integers.count
# end

# #-----or shorter LS example-----#

# def average(integers)
#   sum = integers.reduce(:+)
#   sum / integers.count
# end

#-----Convert return value of average from integer to float-----#

def average(integers)
  float_sum = integers.sum.to_f
  float_sum / integers.count.to_f
end

puts average([1, 6]) == 3.5 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25.666666666666668
puts average([9, 47, 23, 95, 16, 52]) == 40.333333333333336
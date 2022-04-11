# Exercise 8.7

def show_multiplicative_average(array)
  average = array.inject(:*) / array.length.to_f
  puts "The result is #{format("%.3f", average)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

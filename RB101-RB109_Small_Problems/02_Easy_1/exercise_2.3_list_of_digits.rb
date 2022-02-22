# Exercise 2.3

def digit_list(integer)
  integer.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]   
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

#------or------#

def digit_list(integer)
  integer.to_s.chars.map(&:to_i)
end

# something.map(&:to_i) is the same as something.map { |char| char.to_i }

puts digit_list(12345) == [1, 2, 3, 4, 5]   
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

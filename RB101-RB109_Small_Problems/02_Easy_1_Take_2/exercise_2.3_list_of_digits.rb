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

# Take 2

# Easy Way

def digit_list1(integer)
  integer.digits.reverse
end

puts digit_list1(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list1(7) == [7]                     # => true
puts digit_list1(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list1(444) == [4, 4, 4]             # => true

# More Brute Force-like

def digit_list2(integer)
  digits = []
  string = integer.to_s
  loop do
    break if digits.length == string.length
    string.each_char { |char| digits << char.to_i }
  end
  digits
end

puts digit_list2(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list2(7) == [7]                     # => true
puts digit_list2(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list2(444) == [4, 4, 4]             # => true

# LS Brute Force Solution

def digit_list3(integer)
  digits = []
  loop do
    integer, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if integer == 0
  end
  digits
end

puts digit_list3(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list3(7) == [7]                     # => true
puts digit_list3(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list3(444) == [4, 4, 4]             # => true

# LS Syntatic Sugar Solution

def digit_list4(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list4(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list4(7) == [7]                     # => true
puts digit_list4(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list4(444) == [4, 4, 4]             # => true

# map(&:to_i) here is the same as map { |char| char.to_i }
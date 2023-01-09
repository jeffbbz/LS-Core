# Small Problems > Medium 1 > Rotation (Part 3)
def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_rightmost_digits(num_arr, place)
  num_arr[-place..-1] = rotate_array(num_arr[-place..-1])
  num_arr
end

def max_rotation(number)
  num_arr = number.digits.reverse
  num_arr.size.downto(1) { |i| num_arr = rotate_rightmost_digits(num_arr, i) }
  num_arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# with unchanged rotate_array and not using rotate_rightmost

def rotate_array(array)
  array[1..-1] << array[0]
end

def max_rotation(number)
  arr = number.digits.reverse
  (arr.length - 1).times do |i|
    arr[i..-1] = rotate_array(arr[i..-1])
  end
  arr.join.to_i
end

# or with #upto

def max_rotation(number)
  arr = number.digits.reverse
  0.upto(arr.length - 1) do |i|
    arr[i..-1] = rotate_array(arr[i..-1])
  end
  arr.join.to_i
end


p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845
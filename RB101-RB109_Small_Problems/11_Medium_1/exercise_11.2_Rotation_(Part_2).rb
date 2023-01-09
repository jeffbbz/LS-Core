# Small Problems > Medium 1 > Rotation (Part 2)

# converting to string

def rotate_string(string)
  string[1..-1] << string[0]
end

def rotate_rightmost_digits(number, place)
  num_string = number.to_s
  rotated_part = rotate_string(num_string[-place, place])
  left_half = num_string[0..(-place - 1)]
  (left_half + rotated_part).to_i
end

# converting to array

def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_rightmost_digits(number, place)
  num_arr = number.digits.reverse
  rotated_part = rotate_array(num_arr[-place, place])
  left_half = num_arr[0..(-place - 1)]
  (left_half + rotated_part).join.to_i
end

# similar to LS solution

def rotate_rightmost_digits(number, place)
  arr = number.digits.reverse
  arr[-place..-1] = rotate_array(arr[-place..-1])
  arr.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
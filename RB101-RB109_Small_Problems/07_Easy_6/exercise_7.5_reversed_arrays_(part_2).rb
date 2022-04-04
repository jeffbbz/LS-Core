#Exercise 7.5

def reverse(array)
  new_arr = []
  index = -1

  loop do
    break if index == -array.length - 1
    new_arr.push(array[index])
    index -= 1
  end
  new_arr
end

# or

def reverse(array)
  new_arr = []
  array.reverse_each do |element|
    new_arr << element
  end
  new_arr
end

# or

def reverse(array)
  p array.inject([], :unshift)
end



p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
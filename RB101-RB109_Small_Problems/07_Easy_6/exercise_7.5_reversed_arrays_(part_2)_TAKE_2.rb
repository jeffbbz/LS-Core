#Exercise 7.5

def reverse(array)
  new_arr = []
  na_index = -1
  ar_index = 0

  array.length.times do
    new_arr.insert(na_index, array[ar_index])
    na_index -= 1
    ar_index += 1
  end 
  new_arr
end

# or

def reverse(array)
  array.sort_by { |element| -array.index(element) }
end

# or

def reverse(array)
  new_arr = []
  array.reverse_each { |element| new_arr << element }
  new_arr
end

# or

def reverse(array)
  array.each_with_object([]) { |element, arr| arr.unshift(element) }
end

# or

def reverse(array)
  array.inject([], :unshift)
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
# #Exercise 7.4

def reverse_with_loop!(array)
  insert_index = -1

  loop do
    break if array.length <= -insert_index
    array.insert(insert_index, array[0])
    array.shift
    insert_index -= 1
  end
  array
end

# or 

def reverse_with_times!(array)
  insert_index = -1
  array.length.times do
    array.insert(insert_index, array[0])
    array.shift
    insert_index -= 1
  end
  array
end

# or 

def reverse_with_ewi!(array)
  array.each_with_index do |element, index|
    array.insert(index, array[-1])
    array.pop
  end
  array
end

# or

def reverse_with_sort_by!(array)
  array.sort_by! { |element| -array.index(element) }
end

# or

def reverse_with_while_and_multiple_reassignment!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
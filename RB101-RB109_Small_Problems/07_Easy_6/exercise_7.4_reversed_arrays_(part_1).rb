# #Exercise 7.4

def reverse!(array)
  last = array[0]
  index = 0
  
  loop do
    break if array[-1] == last
    array.insert(index, array.pop)
    index += 1
  end
  array
end

# or

def reverse!(array)
  index = 0

  array.length.times do |_|
    array.insert(index, array.pop)
    index += 1
  end
  array
end

# or

def reverse!(array)
  array.length.times do |i|
    array.insert(i, array.pop)
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
reverse!(list) == [] # true
p list == [] # true


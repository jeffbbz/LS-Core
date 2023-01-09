# Exercise 7.7

def halvsies(array)
  arr1 = array.take_while { |element| array.index(element) < (array.length + 1) / 2 }
  arr2 = array.drop_while { |element| array.index(element) < (array.length + 1) / 2 }    
  [arr1, arr2]
end

def halvsies(array)
  array.partition { |element| array.index(element) < (array.length + 1) / 2 }
end

def halvsies(array)
  array.partition.with_index { |_, index| index < (array.length + 1) / 2 }
end


p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]
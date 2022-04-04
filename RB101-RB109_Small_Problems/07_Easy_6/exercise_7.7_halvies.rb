# Exercise 7.7

def halvsies(array)
  arr1 = array.select do |num|
    array.length.even? ? (array.index(num) < array.length / 2) : (array.index(num) <= array.length / 2)
  end

  arr2 = array.select do |num|
    array.length.even? ? (array.index(num) >= array.length / 2) : (array.index(num) > array.length / 2)
  end
  
  [arr1, arr2]
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])

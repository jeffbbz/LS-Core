numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Will print to console 1 3 and return [3, 4]. This is because #each is using the index
# of the array to iterate on each element. The first iteration works as expected printing
# 1 to console and then removing 1 from the array making [2, 3, 4]. However, #each has finished 
# iterating on index 0 (which was previously 1 but is now 2) and so it moves on to index 1, which 
# is no longer 2 but now 3. So it effectively skips over 2. It prints 3 to console but removes 2 
# from the array, because 2 is the leading element making [3, 4]. Now it wants to move onto 
# index 2 but as the array only has two elements now, there is no index 2. So each does not
# print 4 and finishes iterating and returns the original array, which has now been modified to
# [3, 4]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Will print 1 2 to console and return [1, 2]. Basically it will stop iterating after 2 because
# it wants to move onto index 2 but that will no longer exist by the time it finishes with number
# 2


"In both cases we see that iterators DO NOT work on a copy of the original array or from 
stale meta-data (length) about the array. They operate on the original array in real time."
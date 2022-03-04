#Exercise 4.7

def oddities(array)
  returned_array = []
  array.each_index do |index|
    if (index + 1).to_i.odd?
      returned_array << array[index]
    end
  end
  returned_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Further Exploration 1: Companion that returns 2nd, 4th, 6th, and so on elements

# def evenly_other(array)
#   returned_array = []
#   array.each_index do |index|
#     if (index + 1).to_i.even?
#       returned_array << array[index]
#     elsif
#       array.size <= 1
#       returned_array << array[0]
#     end
#   end
#   returned_array
# end

# p evenly_other([2, 3, 4, 5, 6]) == [3, 5]
# p evenly_other([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# p evenly_other(['abc', 'def']) == ['def']
# p evenly_other([123]) == [123]
# p evenly_other([]) == []

# Further Exploration 2: Another Way to Oddity

# def oddities(array)
#   returned_array = []
#   index = 0
#   while index < array.length
#     returned_array << array[index]
#     index += 2
#   end
#   returned_array
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []


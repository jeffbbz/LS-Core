#Exercise 4.7

def oddities(array)
  odd_array = []
  array.each_with_index { |element, idx| odd_array.push(element) if idx.even? }
  odd_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Further Exploration 1: 2nd, 4th, 6th... elements

def evenities(array)
  even_array = []
  array.each_with_index { |element, idx| even_array.push(element) if idx.odd? }
  even_array
end

p evenities([2, 3, 4, 5, 6]) == [3, 5]
p evenities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evenities(['abc', 'def']) == ["def"]
p evenities([123]) == []
p evenities([]) == []

# Further Exploration 2: Solved in two other ways

def oddities2(array)
  odd_array = []
  idx = 0

  loop do
    break if idx >= array.length
    odd_array.push(array[idx]) if idx.even?
    idx += 1
  end
  odd_array
end

p oddities2([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities2(['abc', 'def']) == ['abc']
p oddities2([123]) == [123]
p oddities2([]) == []

def oddities3(array)
  idx = -1
  odd_array = array.select do |_|
    idx += 1
    idx.even?
  end
  odd_array
end

p oddities3([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities3(['abc', 'def']) == ['abc']
p oddities3([123]) == [123]
p oddities3([]) == []
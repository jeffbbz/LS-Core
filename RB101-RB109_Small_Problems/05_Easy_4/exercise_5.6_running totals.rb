#Exercise 5.6

def running_total(num_array)
  sum = 0
  num_array.map { |num| sum += num }
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

# Further Exploration with Enumerable#each_with_object

def running_total(num_array)
  num_array.each_with_object([]) do |num, array|
    array.empty? ? array << num : array << num + array.last
  end
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])


# Further Exploration with Enumerable#inject

def running_total(num_array)
  new_array = []
  num_array.inject(0) do |sum, num|
    new_array << sum + num
  sum + num
  end
  new_array
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])
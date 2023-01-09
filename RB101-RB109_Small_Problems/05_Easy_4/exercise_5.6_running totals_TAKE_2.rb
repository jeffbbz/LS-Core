def running_total_with_while(array)
  return [] if array.empty?

  new_array = [array[0]]
  index = 0

  while new_array.length < array.length
    new_array << new_array[index] + array[index + 1]
    index += 1
  end
  new_array
end

p running_total_with_while([2, 5, 13]) #== [2, 7, 20]
p running_total_with_while([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total_with_while([3]) #== [3]
p running_total_with_while([]) #== []

def running_total_with_ewi(array)
  return [] if array.empty?
  new_array = [array[0]]

  array.each_with_index do |_, index|
    unless new_array.length >= array.length
      new_array << new_array[index] + array[index + 1]
    end
  end
  new_array
end

p running_total_with_ewi([2, 5, 13]) #== [2, 7, 20]
p running_total_with_ewi([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total_with_ewi([3]) #== [3]
p running_total_with_ewi([]) #== []

def running_total_with_map(array)
  sum = 0
  array.map {|num| sum += num}
end

p running_total_with_map([2, 5, 13]) #== [2, 7, 20]
p running_total_with_map([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total_with_map([3]) #== [3]
p running_total_with_map([]) #== []

def running_total_with_ewo(array)
  sum = 0
  array.each_with_object([]) do |num, new_arr|
    new_arr.push(sum += num)
  end
end

p running_total_with_ewo([2, 5, 13]) #== [2, 7, 20]
p running_total_with_ewo([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total_with_ewo([3]) #== [3]
p running_total_with_ewo([]) #== []

def running_total_with_inject(array)
  sum = 0
  array.inject([]) do |new_arr, num| 
    new_arr.push(sum += num)
  end
end

p running_total_with_inject([2, 5, 13]) #== [2, 7, 20]
p running_total_with_inject([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total_with_inject([3]) #== [3]
p running_total_with_inject([]) #== []
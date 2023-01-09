# Exercise 8.9

# each with object

def multiply_all_pairs(arr1, arr2)
  arr1.each_with_object([]) do |arr1_el, new_arr|
    arr2.each do |arr2_el|
      new_arr << arr1_el * arr2_el
    end
  end.sort
end

# product map inject

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |pair| pair.inject(:*) }.sort
end

# brute force nested loops

def multiply_all_pairs(arr1, arr2)
  new_arr = []
  index1 = 0
  
  if (arr1.length <=> arr2.length) == -1 
    longest_arr_length = arr2.length
    shortest_arr_length = arr1.length
  else
    longest_arr_length = arr1.length
    shortest_arr_length = arr2.length
  end

  loop do
    break if index1 >= shortest_arr_length
    index2 = 0
    
    loop do 
      break if index2 >= longest_arr_length
      new_arr << arr1[index1] * arr2[index2]
      index2 += 1
    end
    
    index1 +=1
  end
  new_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
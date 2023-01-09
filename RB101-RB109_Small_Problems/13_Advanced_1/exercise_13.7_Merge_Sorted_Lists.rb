# Small Problems > Advanced 1 > Merge Sorted Lists

def merge(arr1, arr2)
  return arr2 if arr1.empty? 
  return arr1 if arr2.empty?
  index1, index2 = 0, 0
  
  (arr1.size + arr2.size).times.with_object([]) do |_, sorted|
    sort = arr1[index1] <=> arr2[index2]

    if sort == -1 && index1 != arr1.size
      sorted << arr1[index1]
      index1 += 1
    elsif sort == 0 && index1 != arr1.size
      sorted << arr1[index1]
      index1 += 1
    elsif sort == 1 && index2 != arr2.size
      sorted << arr2[index2]
      index2 += 1
    else
      arr1.max > arr2.max ? sorted << arr1[index1] : sorted << arr2[index2]
    end
  end
end

p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], []) #== [1, 4, 5]
p merge([2, 6, 8], [1, 5, 9]) #== [1, 2, 5, 6, 8, 9]
p merge([2, 2], [1, 1, 3]) #== [1, 1, 2, 2, 3]
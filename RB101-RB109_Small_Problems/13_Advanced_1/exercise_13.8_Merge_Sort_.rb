# Small Problems > Advanced 1 > Merge Sort

# def merge(arr1, arr2)
#   sorted = []
#   while !arr1.empty? && !arr2.empty?
#     sorted << (arr1[0] > arr2[0] ? arr2.shift : arr1.shift)
#   end
#   sorted << arr1.shift while arr1.size > 0
#   sorted << arr2.shift while arr2.size > 0
#   sorted
# end

# more concise refactor of merge:

def merge(arr1, arr2)
  sorted = []
  while !arr1.empty? && !arr2.empty?
    sorted << (arr1[0] > arr2[0] ? arr2.shift : arr1.shift)
  end
  sorted.concat(arr1, arr2)
end

# def merge_sort(array)
#   return array if array.size <= 1
#   arr1 = array[0..(array.size/2 - 1)]
#   arr2 = array[array.size/2..-1]
#   arr1 = merge_sort(arr1)
#   arr2 = merge_sort(arr2)
#   merge(arr1, arr2)
# end

# slightly shorter refactor of merge sort

def merge_sort(array)
  return array if array.size <= 1
  arr1 = merge_sort(array[0..(array.size/2 - 1)])
  arr2 = merge_sort(array[array.size/2..-1])
  merge(arr1, arr2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
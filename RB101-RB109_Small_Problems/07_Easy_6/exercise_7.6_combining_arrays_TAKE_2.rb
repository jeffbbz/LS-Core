# Exercise 7.6

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

# or

def merge(arr1, arr2)
  arr1.union(arr2)
end

# or

def merge(arr1, arr2)
  arr1 | arr2
end

# or

def merge(arr1, arr2)
  index = 0
  new_arr = []
  arr1.length > arr2.length ? longer_arr = arr1 : longer_arr = arr2

    while index <= longer_arr.length
    new_arr << arr1[index] if arr1[index] != nil
    new_arr << arr2[index] if arr2[index] != nil
    index += 1
    end
  new_arr.uniq
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
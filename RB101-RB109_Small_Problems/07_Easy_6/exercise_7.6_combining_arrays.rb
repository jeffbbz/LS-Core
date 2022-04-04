# Exercise 7.6

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

# or

def merge(arr1, arr2)
  arr1 | arr2
end

# # or

def merge(arr1, arr2)
  arr1.union(arr2)
end


p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]

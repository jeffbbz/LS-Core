#Exercise 6.2

arr = ["b", "a"]
arr = arr.product(Array(1..3)) 

# the above => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr.first.delete(arr.first.last)

# finally this will => 1 because arr.first.delete will return ["b", 1]
# and the (arr.first.last) will be (1) thus 1 will be deleted from ["b", 1]
# and 1 will be returned

# value of arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # => [["b"], [1, 2, 3]], ["a", [1, 2, 3]]]
arr.first.delete(arr.first.last)

# => [1, 2, 3]

# value of arr = [["b"], ["a", [1, 2, 3]]]


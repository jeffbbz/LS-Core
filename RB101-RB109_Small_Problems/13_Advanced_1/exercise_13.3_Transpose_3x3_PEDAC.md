# Small Problems > Advanced 1 > Transpose 3x3

[Link to Problem](https://launchschool.com/exercises/01d32e03)

## The Problem

take a given nested array of 3 arrays of 3 elements and transpose the columns with the rows and return the new array

## P: Understand the Problem

**Input:** a nested array

**Output:** new transformed nested array

### Rules & Requirements

- input array will have 3 array elements with 3 elements each.
- its a matrix but also can be thought of as:
  - matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

- the first element of first array  `matrix[0][0]` and last element of last array `matrix[2][2]` will not be swapped
- middle element of middle array `matrix[1][1]` will not be swapped
- otherwise `matrix[0][1]` <-> `matrix[1][0]`  and  `matrix[0][2]`<-> `matrix[2][0]` (pattern here?)
- `matrix[1][2]` <-> `matrix[2][1]` also swapped
- difficult part is that we must not alter the original array

## E: Examples and Test Cases

```ruby
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
```

## D: Data Structures

nested arrays

## A: Algorithm

1. define a method to take one nested array argument
1. intialize a new empty array
1. iterate over the given nested array, and the internal array with the indexes from each.
1. adding each inner array element to the new array with inner and outer array index swapped
1. return new matrix array


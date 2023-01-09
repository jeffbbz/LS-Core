# Small Problems > Advanced 1 > Transpose MxN

[Link to Problem](https://launchschool.com/exercises/ff9b13b6)

## The Problem

transpose a matrix of any size which is at least 1 x 1

## P: Understand the Problem

**Input:** a nested array

**Output:** transposed new nested array

### Rules & Requirements

- will be at least 1x1
- return new array don't alter original array

## E: Examples and Test Cases

```ruby
transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]

[
 [1, 2, 3, 4]
]

4 columns of 1 row of 4

becomes

[
  [1], 
  [2], 
  [3], 
  [4]
]

1 column of 4 rows of 1

patterns? 
matrix1[0][0] -> matrix2[0][0] stays same

matrix1[0][1] -> matrix2[1][0] swap index
matrix1[0][2] -> matrix2[2][0] swap index
matrix1[0][3] -> matrix2[3][0] swap index

transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]

1 column of 4 rows of 1

[
 [1], 
 [2], 
 [3], 
 [4]
]

becomes 4 columns of 1 row of 4

[
 [1, 2, 3, 4]
]

patterns? 
matrix1[0][0] -> matrix2[0][0] stays same

matrix1[1][0] -> matrix2[0][1] swap index
matrix1[2][0] -> matrix2[0][2] swap index
matrix1[3][0] -> matrix2[0][3] swap index

transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]

5 columns of 3 rows of 5

[
  [1, 2, 3, 4, 5], 
  [4, 3, 2, 1, 0], 
  [3, 7, 8, 6, 2]
]

becomes 3 columns of 5 rows of 3

[
  [1, 4, 3], 
  [2, 3, 7], 
  [3, 2, 8], 
  [4, 1, 6], 
  [5, 0, 2]
 ]

patterns?
matrix1[0][0] -> matrix2[0][0] stays same
matrix1[0][1] -> matrix2[1][0] swap index
matrix1[0][2] -> matrix2[2][0] swap index
matrix1[0][3] -> matrix2[3][0] swap index
matrix1[0][4] -> matrix2[4][0] swap index

matrix1[1][0] -> matrix2[0][1] swap index
matrix1[1][1] -> matrix2[1][1] stays same
matrix1[1][2] -> matrix2[2][1] swap index
matrix1[1][3] -> matrix2[3][1] swap index
matrix1[1][4] -> matrix2[4][1] swap index

matrix1[2][0] -> matrix2[0][2] swap index
matrix1[2][1] -> matrix2[1][2] swap index
matrix1[2][2] -> matrix2[2][2] stays same
matrix1[2][3] -> matrix2[3][2] swap index
matrix1[2][4] -> matrix2[4][2] swap index


transpose([[1]]) == [[1]]

[
  [1]
]

[
  [1]
]

```

## D: Data Structures

nested array

## A: Algorithm

1. follow the same steps as before but at the beginning
1. create an empty array to hold the new matrix
1. n number of times, where n is the number of elements in the first array element of the given matrix add a new empty inner array to the previously created empty new matrix array.

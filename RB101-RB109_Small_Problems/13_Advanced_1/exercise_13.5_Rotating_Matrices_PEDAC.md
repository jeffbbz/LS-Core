# Small Problems > Advanced 1 > Rotating Matrices

[Link to Problem](https://launchschool.com/exercises/6f022fc1)

## The Problem

take a given matrix and rotate it 90 degrees clockwise and return a new rotated matrix

## P: Understand the Problem

**Input:** nested array

**Output:** new transformed nested array

### Rules & Requirements

- matrices may not all be equal but they will be properly formed (matching number of rows in given matrix)
- rotate 90 degrees means that the first element of the last inner array will become the the first element of the first array, the second and the first element of the first array will become the last element of the first array
- the last element of the first array will become the last element of the last array and the last element of the last array will become the first element of the last array

## E: Examples and Test Cases

```ruby
matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

becomes:

[
  [3, 4, 1], 
  [9, 7, 5], 
  [6, 2, 8]
]

[693]
[274]
[851]

[626]
[272]
[856]


pattern:

first row swap and add 2 to new inner

2nd row swap

3rd row swap and subtract 2 from new inner

matrix1[0][0] -> matrix2[0][2] outer + 3 - 3, inner + 3 - 1
matrix1[0][1] -> matrix2[1][2] outer + 3 - 2, inner + 3 - 2
matrix1[0][2] -> matrix2[2][2] outer + 3 - 1, inner + 3 - 3

matrix1[1][0] -> matrix2[0][1] swapped = outer + 3 - 4, inner + 3 - 2
matrix1[1][1] -> matrix2[1][1] stays same = outer + 3 - 3, inner + 3 - 3
matrix1[1][2] -> matrix2[2][1] swapped = outer + 3 - 2, inner + 3 - 4

matrix1[2][0] -> matrix2[0][0] outer + 3 - 1, inner + 3 - 3
matrix1[2][1] -> matrix2[1][0] outer + 3 - 2, inner + 3 - 2
matrix1[2][2] -> matrix2[2][0] outer + 3 - 3, inner + 3 - 1


matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

becomes:

[
  [5, 3], 
  [1, 7], 
  [0, 4], 
  [8, 2]
]

8015
2473

pattern:


1st row swap and add 1 to new innner

matrix1[0][0] -> matrix2[0][1] outer + 4 - 4, inner + 4 - 3
matrix1[0][1] -> matrix2[1][1] outer + 4 - 3, inner + 4 - 4
matrix1[0][2] -> matrix2[2][1] outer + 4 - 2, inner - 4 - 3
matrix1[0][3] -> matrix2[3][1] outer + 4 - 1, inner - 4 - 2

2nd row swap and subtract 1 from new inner

matrix1[1][0] -> matrix2[0][0] outer - 4 - 3, inner + 4 - 4
matrix1[1][1] -> matrix2[1][0] outer - 4 - 3, inner + 4 - 4
matrix1[1][2] -> matrix2[2][0] outer - 4 - 3, inner + 4 - 4
matrix1[1][3] -> matrix2[3][0] outer - 4 - 3, inner + 4 - 4

SUMMARY:

1st row: swap in & out idx then + (original column number - 1) to in index
2nd row/middle row: swap in & out idx then + 0 to in index
last row: swap in & out idx then - (original column number - 1) to in index

or maybe:
  
  if number of columns is odd then starting count is 2
    +2 +0 +(-2)
  if even then stating counter is 1
    +1 +(-1)
    
    always decrement by 2
  

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
```

## D: Data Structures

nested arrays

## A: Algorithm

1. define a method that takes a nested array matrix as an argument
1. initililize an empty array to store the new matrix
1. add inner empty arrays to the new array equaling the number of elements in the first inner array
1. count the number of elements in the outer array
1. set a count variable equal to the size - 1
1. iterate outer array element number of times for an outer loop
1. inner array element number of times for the inner loop
1. on each pass swap the outer and inner index of the current element and + the count varible to the inner index
1. after each inner loop iteration decrement the count variable by 2
1. after all inner and out loop iterations return the new matrix 

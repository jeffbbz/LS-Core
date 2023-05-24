### Goal

Write a program which determines triangles between three different types



### Rules

- three types of triangle: equilateral, isosceles, scalene
- equilateral has all three equal sides:    a == b == c
- isosceles has two equal sides only:      a == b != c
- scalene has no equal sides:                   a != b != c
- all sides must length must be greater than 0
- sum of two sides must be greater than length of third side



- Triangle class required
  - has three instance variables, one for each side
    - lengths can be integers or floats
  - constructor method that takes three args at instantiation
  - ArgumentError exception raised if any argument is 0
  - ArgumentError raised if any arg is negative
  - Argument Error raised if any two sides are not greater than any third side

​			side1 + side2 < side 3

​			side1 + side3 < side 2

​			side2 + side3 < side 1



array[0] + array[1] < array[-1]

array[1] + array[-1] < array[0]

array[-1] + array[0] < array[1]







[1, 2, 3].each 



- Triangle#kind method needed
  - returns a string representing type of triangle (scalene, iso, or equ)



- make a method for identifying each type?
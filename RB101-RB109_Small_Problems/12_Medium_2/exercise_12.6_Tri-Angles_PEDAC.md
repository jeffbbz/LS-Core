# Small Problems > Medium 2 > Tri-Angles

[Link to Problem](https://launchschool.com/exercises/1d04b607)

## The Problem

determine if a triangle is right, acute, obtuse or invalid given three angles in degrees

## P: Understand the Problem

**Input:** 3 integers representing angles in degrees

**Output:** a symbol of what type of triangle (or not) it is

###  Requirements

- all angles will be integers
- all arguments will be degrees
- a valid triangle
  - sum of angles == 180 degrees
  - no angle is == 0

- right
  - any one angle == 90

- acute
  - all angles < 90

- obtuse
  - any one angle < 90


## E: Examples and Test Cases

```ruby
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
```

## D: Data Structures

array of degrees, case statement


## A: Algorithm

1. define a method that takes three integer arguments
2. intialize a new array with each of hte three degree arguments in it
3. determine if triangle is invalid
   1. sum array and see if == 180 or check if any element of array is 0
   2. if so return :invalid
4. determine if right
   1. if any one angle == 90 return :right
5. determine if acute
   1. if all angles == 90 :acute
6. determin if obtuse
   1. if any one angle > 90 return :obtuse

# Small Problems > Medium 2 > Triangle Sides

[Link to Problem](https://launchschool.com/exercises/7fe5eaf8)

## The Problem

Given three side lengths determine whether it is a triangle and if so what kind

## P: Understand the Problem

**Input:** three integers (representing lengths of sides of triangle)

**Output:** a symbol of what kind of triangle or invalid

### Requirements

- inputs will be integers or floats
- outputs are symbols
- a valid triangle
  - two shortest sides > longest side
  - each side > 0

- eqilateral triangle
  - all sides equal length

- isosceles triangle
  - 2 side equal, one different

- scalene triangle
  - all sides different




## E: Examples and Test Cases

```ruby
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid
```

case statement? if/elsif?

## D: Data Structures

array of side lengths [3, 3, 3] etc

## A: Algorithm

1. define a method that takes three integer elements
1. initialize a new array with each side length integer as an element
1. sort the array from min to max
1. iterate over the side length array to find what kind of triangle it is
1. check if invalid
   1. if first two elements are less than third element
   1. or if any element <= 0
   1. return :invalid
1. check if all equilateral
   1. delete any duplicates. if array size is 1 then return :equilateral
1. check if isosceles
   1. delete any duplicates if array size is 2 then return :iso
1. check if scalene
   1. else scalene

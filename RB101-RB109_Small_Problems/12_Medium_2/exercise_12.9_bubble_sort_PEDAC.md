# Small Problems > Medium 2 > Bubble Sort

[Link to Problem](https://launchschool.com/exercises/2a5d5a4e)

## The Problem

take a given array and sort its elements using the bubble sort algorithm

## P: Understand the Problem

**Input:** array of at least two elements

**Output:** same array sorted from low to high

### Requirements

- array will have at least 2 elements
- use the bubble sort algorithm
  - move through the array comparing 1 --> 2 then 2 --> 3 etc.  
  - if 1 > 2 then swap if 1 < 2 then do not swap and so on
  - make multiple passes until no changes are made

- array will be modified in place

## E: Examples and Test Cases

```ruby
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
```

## D: Data Structures

arrays


## A: Algorithm

1. define a method that take an array of elements
1. larger loop break condition if the array is equal to itself previously sorted self then break
1. iterate over the array comparing the elements at the first index with the second index
1. if first is larger than second swap, else leave in place
1. increment the index so to increment the elements and compare again
1. return the sorted array

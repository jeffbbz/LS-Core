# Small Problems > Easy 7 > Combine Two Lists

[Link to Problem](https://launchschool.com/exercises/3b64283e)

## The Problem

take two arrays and return a new array whose elements are the product of every possible pair of elements between the arrays, sorted low to high

## P: Understand the Problem

**Input:** two array of integers

**Output:** one array of products of all pairs sorted low to high

### Explicit Requirements

- we have two arrays
- no empty arrays
- sizes could be different
- finding products of all pairs
- sort from low to high before final return


## E: Examples and Test Cases

```ruby
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
```

## D: Data Structures

arrays


## A: Algorithm

1. define a method that takes two array arguments
1. initilalize an empty array to store the results
1. iterate over the first and second array
1. multiply the first element of arr1 by each element of array 2 adding each one to the new array
1. move to the next element of arr1 and repeat
1. sort the returned new array from lowest number to highest
1. return the new array


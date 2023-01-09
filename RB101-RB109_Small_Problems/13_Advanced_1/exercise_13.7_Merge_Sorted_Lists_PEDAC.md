# Small Problems > Advanced 1 > Merge Sorted Lists

[Link to Problem](https://launchschool.com/exercises/63801750)

## The Problem

given two arrays, combine the elements in sorted order into a single new array and return that array

## P: Understand the Problem

**Input:** two arrays of any number of elements

**Output:** single array of elements sorted

### Rules & Requirements

- do not mutate the input arrays
- do not sort the result array, do elements one at a time while building the array
- array elements are integers
- arrays can be blank
- new array should have total number of elements that are the sum of the two given arrays

## E: Examples and Test Cases

```ruby
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]
```

## D: Data Structures

array

## A: Algorithm

1. define a method that takes two array arguments
2. create a new empty array to store the result
3. if one of the arrays is empty return the other array
4. iterate over the two arrays
   1. compare the lowest number from the first array to the lowest from the second array
   2. add the lower one to the new array
   3. compare the unchosen lowest with the next lowest from the array that was picked
   4. add the lower one to the new array
   5. continue until the new array has the same number of elements as the two arrays combined
5. return the new array

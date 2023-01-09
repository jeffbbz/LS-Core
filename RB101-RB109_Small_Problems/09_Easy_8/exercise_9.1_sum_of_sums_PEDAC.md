# Small Problems > Easy 8 > Sum of Sums

[Link to Problem](https://launchschool.com/exercises/8a66610c)

## The Problem

take an array of numbers and return a integer which is the sum of all sums of possible sequences starting with the first or last element

## P: Understand the Problem

**Input:** an array

**Output:** an integer

### Explicit Requirements

- arrays will have at least one element
- return the sum of all sums of sequences
  - sequences go [3, 5, 2] -> 3, then 3 +5, then 3 + 5 + 2 or index 1, then index 1 + 2, then index 1 + 2 + 3 , until the end.



## E: Examples and Test Cases

```ruby
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
```

## D: Data Structures

arrays!


## A: Algorithm

1. define a method to take one array argument
2. sum the array elements
3. iterate over the array removing one and summing until empty
   1. remove the final element and sum again
   2. remove the next element and sum
   3. continue until array is empty
4. add all summed sums and return number
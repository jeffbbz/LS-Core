# Small Problems > Easy 5 > Reversed Arrays (Part 1)

[Link to Problem](https://launchschool.com/exercises/eec5e591)

## The Problem

write a method that takes an array argument and mutates the array by reversing the order of its elements

## P: Understand the Problem

**Input:** an array of elements

**Output:** the same array modified

### Explicit Requirements
- don't use Array#reverse
- not reversing the elements themselves but the order in the array (their index positions)
- empty array returns empty array
- array of one element returns same array

### Implicit Requirements

- 

### Questions

1. 


## E: Examples and Test Cases

```ruby
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true
```

## D: Data Structures

arrays


## A: Algorithm
1. define a method to take one array argument
1. initialize an index variable to -1
3. loop over the array
   1. break if the lenght of the array is <= the positive version of the index variable
   2. insert the first element of the array at the location of the index variable of the array
   3. remove the first element of the array
   4. decrement the index variable by 1
4. return the modified array
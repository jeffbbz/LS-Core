# Small Problems > Easy 5 > Reversed Arrays (Part 2)

[Link to Problem](https://launchschool.com/exercises/577016f3)

## The Problem

Write a method that returns a new array with the reverse order of elements in given array

## P: Understand the Problem

**Input:** an array

**Output:** a new array

### Requirements

- do not mutate the argument array
- don't use array#reverse


## E: Examples and Test Cases

```ruby
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true
```

## D: Data Structures

arrays


## A: Algorithm
1. Define method with one array parameter
2. iterate over the array
   1. prepend each element to a newly initialized array
   2. return new array
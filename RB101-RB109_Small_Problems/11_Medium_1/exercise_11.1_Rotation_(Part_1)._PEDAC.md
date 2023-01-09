# Small Problems > Medium 1 > Rotation (Part 1)

[Link to Problem](https://launchschool.com/exercises/4b2a26d5)

## The Problem

create a new array that is a given array rotated by moving its first element to its end

## P: Understand the Problem

**Input:** array

**Output:** a new array

### Requirements

- don't use #rotate
  
- don't mutate the argument array
  
- take the first element and put it at the end
  
- if only one element return the given array
  

## E: Examples and Test Cases

```ruby
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
```

## D: Data Structures

array


## A: Algorithm

1. define a method to take one array argument
1. take the element at the first index of the array and put it at the end
1. do so in a non destructive manner
1. return the new array 
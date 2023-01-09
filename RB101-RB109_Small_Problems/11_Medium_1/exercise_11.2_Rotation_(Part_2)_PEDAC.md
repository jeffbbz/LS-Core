# Small Problems > Medium 1 > Rotation (Part 2)

[Link to Problem](https://launchschool.com/exercises/11e2bbdc)

## The Problem

take a number and a digit counter and return a number where the digit counter number of digits form the right side of the number are rotated on digit

## P: Understand the Problem

**Input:** a number and and a rotater count integer

**Output:** the number rotated accordingly

### Explicit Requirements

- n will always be positive

## E: Examples and Test Cases

```ruby
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
```

## D: Data Structures

string or array

## A: Algorithm

1. create a method that takes two integer arguments
2. convert the integer to string and save reference in newly initialized variable
3. rotate right part of the given string per the given place number
   1. take a range from - the place number index for place number of substrings
   2. pass the returned string to the rotate string method
   3. append the first substring of the string to the back of the substring from index 1 until -1
4. find the left half /non rotated part of the string
   1. this is the string from index 0 until -place - 1 index
5. concatenate the rotated part to the non rotated part
6. convert back to integer
7. return integer

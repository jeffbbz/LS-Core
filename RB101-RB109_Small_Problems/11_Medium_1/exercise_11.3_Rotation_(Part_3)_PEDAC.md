# Small Problems > Medium 1 > Rotation (Part 3)

[Link to Problem](https://launchschool.com/exercises/311da364)

## The Problem

find and return the maximum rotation of a given number

## P: Understand the Problem

**Input:** integer

**Output:** integer

### Explicit Requirements

- don't have to worry about multiple or leading 00s
- rotate the first digit to the end
- then rotate the second digit to the end
- then the third digit to the end
- do this one minus the length of the number times (a six digit number will have 5 rotations)


## E: Examples and Test Cases

```ruby
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
```

735291 >> (7)35291 = 35291(7) >> 3(5)2917 = 32917(5) >> 32(9)175 = 321759 >> 321(7)59 = 32159(7) >> 3215(9)7 = 32157(9)



## D: Data Structures

array of integers probably


## A: Algorithm

1. write a method that takes an integer argument
1. convert the integer to an array of digits
1. iterate over the array for the length of the array - 1
1. pass the the first element to the end then pass the second element to the end and so one

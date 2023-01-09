# Small Problems > Medium 1 > Diamonds!

[Link to Problem](https://launchschool.com/exercises/75ff93ae)

## The Problem

print out a 4 pointed diamond shape of stars in an n x n grid.

## P: Understand the Problem

**Input:** odd integer

**Output:** printed out 4 point diamond shape in n x n grid

### Requirements

- argument integer will be negative
- print not return
- total size of grid is n x n
  - so if integer is 3 then 3 x 3 with a diamond in the middle
  - the center of the diamon will be full n accross
  - the top and bottom will be one star in the middle point of n
  - each row will increase in size by two stars (one on each side) of the middle star until n size accorss then decrease back down to one by on star on each side
  - number of stars is always odd



## E: Examples and Test Cases

```ruby
diamond(1)

*
  
diamond(3)

 *
***
 *
  
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
```

So we are going to want to count from 1 up to the given number then back down to one

actually making a square which is input number wide and tall



0 - 1 - 3 - 1- 0

2,2 - 1,1 - 0 -- 1,1-- 2,2

## D: Data Structures



## A: Algorithm

1. define a method that takes an integer argument
1. begin to iterate from 1 upto the integer argument
   1. out put the current iteration number of *s surrounded by spaces (spaces should be number of input number - number of stars with half on each side)
   1. until the integer number of *s is output with no spaces
1. iterate from the integer argument back down to 1
   1. repeat the same process as above but in reverse
   1. until the output is one star with input number - 1 /2 on each side of the star

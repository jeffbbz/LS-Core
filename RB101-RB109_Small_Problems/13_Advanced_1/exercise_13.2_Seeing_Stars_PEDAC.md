# Small Problems > Advanced 1 > Seeing Stars

[Link to Problem](https://launchschool.com/exercises/facfe405)

## The Problem

Take a given integer and display an 8 pointed star with the dimensions of that integer

## P: Understand the Problem

**Input:** Odd integer

**Output:** 8 pointed star

### Rules & Requirements

- height of middle lines will be n sized
  
- diagonals will also have n number of stars
  
- the rest will be " "
  
- every row except the middle row has 3 stars
  
- second from middle row has three centered stars
  
- then each row after has three stars with increasing space between them
  
- top and bottom rows have stars at the first and last position and a star in the center position with spaces between them
  
- the next row swaps the outer stars with the first space inward. middel star is the same
  
- the stars and space keep swapping until there is no space between them
  
- next row is the middle
  

## E: Examples and Test Cases

```ruby
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *
  
star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *
```

## D: Data Structures

*---*---*

-*--*--*-

--*-*-*--

*--*--*

array

## A: Algorithm

1. define a method to take one integer argument
1. initialize a local variable to reference the star shape "*"
1. initialize a local variable to reference a single whitespace " "
1. initialize an array whose size == the given integer, first and last and center (array size - 1 / 2 index) element are stars and the rest are white space.
1. print line
1. iterate over the array swapping the first and last "*" element with the  " " to the left (for the left *) and the right (for the right *)
1. print each line
1. when the middle three elements are *'s stop
1. print a full line of stars equal to the integer argument or the array's size
1. do the reverse

# Small Problems > Easy 6 > Right Triangles

[Link to Problem](https://launchschool.com/exercises/d165e3c4)

## The Problem

write a method that takes a positive integer and outputs a right triangle such as the example below

## P: Understand the Problem

**Input:** integer

**Output:** print to screen a right triangle shape

### Explicit Requirements
- build a right triangle from point to base one * at a time

### Implicit Requirements

- return of method will be nil, we care about output


## E: Examples and Test Cases

```ruby
triangle(5)

    *
   **
  ***
 ****
*****
  
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
```

## D: Data Structures

string


## A: Algorithm
1. Define method to take one integer argument
2. initialize a local variable to reference the first line of the triangle output
   1. string should be integer argument - 1 spaces followed by a single *
3. loop integer argument times outputting the growing string as follows:
   1. output the first line/top line
   2. append another * to the string
   3. remove the substring at index 0 of the string
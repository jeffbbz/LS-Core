# Small Problems > Easy 3 > Squaring an Argument

[Link to Problem](https://launchschool.com/exercises/d24fe972)

## The Problem

Using the `multiply` method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

## P: Understand the Problem
**Input:** one integer number

**Output:** one integer number

- return value of square method which is the argument numbers squared

### Explicit Requirements

- create a method defined with one parameter
- square the integer assigned to reference by the parameter using the previous multiply method

### Implicit Requirements

- return the operation result as return value of method

### Questions

- 


## E: Examples and Test Cases

```ruby
square(5) == 25
square(-8) == 64
```



## D: Data Structures

method



## A: Algorithm

1. define a method with one parameter
1. multiply the local variable referencing the argument integer by itself
   1. invoke the multiply method and pass it the integer referenced by square method local variable as two arguments
1. return the result as square method return value
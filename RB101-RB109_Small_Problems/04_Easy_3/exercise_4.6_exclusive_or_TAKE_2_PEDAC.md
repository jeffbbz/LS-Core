# Small Problems > Easy 3 > Exclusive Or

[Link to Problem](https://launchschool.com/exercises/b02d7e27)

## The Problem

The `||` operator returns a truthy value if either or both of its operands are truthy. If both operands are falsey, it returns a  falsey value. The `&&` operator returns a truthy  value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called **exclusive or**.

In this exercise, you will write a function named `xor` that takes two arguments, and returns `true` if exactly one of its arguments is truthy, `false` otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by  `||` and `&&`.

## P: Understand the Problem
**Input:** two boolean arguments

- boolean return values of calls to `even?` or `odd? `method on integers

**Output:**  a boolean value

- True if only one of the arguments is truthy
- false otherwise

### Explicit Requirements

- define a method with two parameters to accept two arguments
- within the method we need to compare the arguments
  - need to return true if only one of them is true, false otherwise.


### Implicit Requirements
- 

### Questions

- 


## E: Examples and Test Cases

```ruby
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
```



## D: Data Structures

method

## A: Algorithm

1. define the `xor?` method with two parameters
1. First compare the two return values referenced by the method parameters to see if they are equal. 
   1. If equal, return false if not return true.
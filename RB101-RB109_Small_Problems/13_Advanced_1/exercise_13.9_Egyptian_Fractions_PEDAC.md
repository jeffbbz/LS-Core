# Small Problems > Advanced 1 > Egyptian Fractions

[Link to Problem](https://launchschool.com/exercises/5f95d514)

## The Problem

write two methods

1. take a rational number and return an array of denominators of an egyptian fraction representation of the rational number
2. one that does the reverse (takes an array of numbers and calculates the rational number)

## P: Understand the Problem

**Input:** rational number

**Output:** array

### Explicit Requirements

- an Egyptian fraction is the sum of a group of distinct unit fractions.

- all rational numbers can be written as an infinite variation of egyptian fractions

- ```pseudocode
      1   1   1   1
  2 = - + - + - + - = 6/6 + 3/6 + 2/6 + 1/6 = 2
      1   2   3   6
  
  ruby rational for 2 is Rational(2, 1) = 2/1 which = the above
     
     
  137/60 = 1/1 1/2 1/3 1/4 1/5 = 60/60 + 30/60 + 20/60 + 15/60 + 12/60
  
  3 = 57960 + 28980 + 19320
  ```

- numerator is always one

- denominator must be unique from others in the series

- a rational number is any number represented by a fraction

  - A rational number can be represented as a pair of integer numbers: a/b (b>0)
  - a is the numerator and b is the denominator
  - a rational number is any number represented by a fraction


## E: Examples and Test Cases

```ruby
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
```

## D: Data Structures

array here or hash?

## A: Algorithm

1. 



take a rational


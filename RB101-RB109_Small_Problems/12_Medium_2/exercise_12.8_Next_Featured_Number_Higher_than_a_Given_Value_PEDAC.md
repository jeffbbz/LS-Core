# Small Problems > Medium 2 > Next Featured Number Higher than a Given Value

[Link to Problem](https://launchschool.com/exercises/a1afc619)

## The Problem

Take a given integer and return the next "featured number" greater than or an error message if no next number

## P: Understand the Problem

**Input:** integer of any length

**Output:** integer or an error message

### Requirements

- returned integer must be a featured number
- featured number requirements
  - odd number ( n % 2 != 0 )
  - multiple of 7 ( n % 7 == 0 )
  - digits occur only once in number (133 != feature because 3 is twice)
  - 7, 21, 35, 49, 63...
  - every other multiple of 7 is odd

- return number should be greater than given number

## E: Examples and Test Cases

```ruby
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987
featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
```

take a give number and find the closest higher odd multiple of 7 then make sure it does't have repeated digits



modulo a number by 7 then subtract the remainder from the number then add 7 to the number if number is even add 7 more. if number if multi digit add 7 until not.



make and array of multiples of 7 up to certain point then find any numbers higher than the given number that are odd and have multi digits?

## D: Data Structures

maybe an array


## A: Algorithm

1. define a method that takes an integer argument
1. see if integer is multiple of 7
1. subtract remainder from integer and add 7 until you get a multiple that is not odd
1. if the number has repeated digits add 7 further until no repeated digits and odd
1. return number or error if no number found

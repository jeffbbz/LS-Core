# Small Problems > Easy 9 > Grade Book

[Link to Problem](https://launchschool.com/exercises/063fa805)

## The Problem

determine the mean of three numbers and a letter grade value that matches

## P: Understand the Problem

**Input:** 3 positive integers

**Output:** string char A-F

### Explicit Requirements

- integers will be between 0-100
- don't need to check if that is true
- 90-100 - A
- 80-89 B
- 70-79 C
- 60-69 D
- 0-59 F


## E: Examples and Test Cases

```ruby
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
```

## D: Data Structures

array and hash with ranges as keys?


## A: Algorithm

1. define a method that takes three integer arguments
1. initialize a new array with the three input integers
1. intialize a new hash with ranges as keys and letter grades as values
1. find the average of the integer array elements
   1. sum the elements and divide by number of elements (3)

1. query the hash to determine the appropirate value to the key of the average in step 4
1. return the string value

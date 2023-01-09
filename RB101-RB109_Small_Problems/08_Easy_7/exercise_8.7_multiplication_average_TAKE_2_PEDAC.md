# Small Problems > Easy 7 > Multiplicative Average

[Link to Problem](https://launchschool.com/exercises/00ee768d)

## The Problem

Take an array, multiply all elements together, divide by number of elements, output to screen rounded to 3 decimals

## P: Understand the Problem

**Input:** array of number

**Output:** print to screen a string with numbers

### Explicit Requirements

- array is not empty
- array can have one to many elements
- might need to use Kernel#format for rounding


## E: Examples and Test Cases

```ruby
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
```

## D: Data Structures

array


## A: Algorithm

1. define a method to take one array argument
2. multiply all array elements together
   1. find the product of each element multiplied together

3. divide return value by array length
   1. divide above product by the number of elements in the array

4. round to 3 decimal points
5. print to screen with string interpolation and decimal formating


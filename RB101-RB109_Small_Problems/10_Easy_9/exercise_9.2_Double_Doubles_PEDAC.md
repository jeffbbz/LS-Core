# Small Problems > Easy 9 > Double Doubles

[Link to Problem](https://launchschool.com/exercises/b5c55bc6)

## The Problem

return an number that is two times a given number unless given number is a double number in which case return given number

## P: Understand the Problem

**Input:** integer

**Output:** integer

### Explicit Requirements

- argument will be integer
- find double numbers and return them as-is
  - double numbers are not palindromes (334433 is not a double)
  - double numbers are even
  - double numbers have the same numbers in their front half and back half. (44, 2323, 934934)

- multiply argument integer by two if not a double number

## E: Examples and Test Cases

```ruby
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
```

## D: Data Structures

and array of digits

## A: Algorithm

1. create a method that takes an integer argument
2. check if argument is a double
   1. convert integer to array of single digits
   2. check if length of array is even number
   3. if even check if first half of elements are equal to second half of elements
   4. if double return argument unchanged
3. if not double multiply given integer by 2 and return

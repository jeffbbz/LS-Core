# Small Problems > Easy 9 > Sequence Count

[Link to Problem](https://launchschool.com/exercises/86fbfc4c)

## The Problem

take two integers, a count and a first in sequence integer. Return an array with the same number of elements as the count and each element is a multiple of the first in sequence integer, starting from that integer

## P: Understand the Problem

**Input: two integers

**Output:** an array of integers

### Requirements

- count will be >= 0
- if count nubmer is 0 return an empty array
- first in sequence can be any value
- create an array
  - elements are a sequence
  - first element is second given integer
  - then each element is multiple, until there are count number of elements
  


## E: Examples and Test Cases

```ruby
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
```

## D: Data Structures

array


## A: Algorithm

1. define a method to take 2 integer arguments (count, start)
1. initialize a new empty array
1. loop or iterate count number of times
1. on the first iteration add the start number to the array
1. for each additional iteration add the start number += itself
1. stop after count number of times
1. return array

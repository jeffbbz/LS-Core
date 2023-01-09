# Small Problems > Easy 7 > Staggered Caps (Part 1)

[Link to Problem](https://launchschool.com/exercises/77884ef5)

## The Problem

write a method that returns a new string with the substrings of a given string transformed where every other letter is upcase and the others downcase.

## P: Understand the Problem

**Input:** string

**Output:** new string

### Explicit Requirements

- don't change non letter characters but count them for the every other part
- change even index strings to upper, odd index strings to lower
  - or just every other strarting with upper


### Implicit Requirements

-  first letter should be upcase


## E: Examples and Test Cases

```ruby
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
```

## D: Data Structures

strings


## A: Algorithm

1. define a method to take on string argument
1. initialize an index counter variable
1. initialize a new empty string
1. loop over the string upcasing even indexed substrings and downcasing odd
1. if the index counter is even, then assign the upcase of the current substring to the new string
1. if odd then pass the downcase
1. increment the index counter
1. loop while the counter is less than the length of the argument string.
1. return new string


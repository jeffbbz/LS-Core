# Small Problems > Easy 7 > Lettercase Counter

[Link to Problem](https://launchschool.com/exercises/96e0267a)

## The Problem

write a method taht takes a string and returns a has with three entries: 1st is count of lowercase letter chars, 2nd is count of uppercase letter chars, thirds is count of non letter chars

## P: Understand the Problem

**Input:** string

**Output:** hash with three k-v pairs

### Explicit Requirements

- count the number of lowercase letters
- count the number of uppercase letters
- count non letter chars
- create a hash
  - keys are lower, uppper, non
  - values are count of each in integer form


### Implicit Requirements

- string can contain letters, numbers (upper and lower), other ASCII chars, spaces
- string can be empty


## E: Examples and Test Cases

```ruby
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
```

## D: Data Structures

strings, array, hash

## A: Algorithm

1. define a method that takes one string argument
2. initialize a new hash
3. convert the string to an array of chars
4. iterate over the array of chars counting lower/upper/none and adding result to new hash
   1. match each char with a subset of all chars
   2. if element is lower then hash[lower] += 1
   3. if element is upper then hash[upper] += 1
   4. if none then hash[none] += 1

5. return hash


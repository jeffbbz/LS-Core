# Small Problems > Easy 4 > Convert a String to a Number!
[Link to Problem](https://launchschool.com/exercises/192719a5)

## The Problem
Writing a program that will convert a given string of digits to an integer number. Do not use any standard converstion methods

## P: Understand the Problem

**Input:** a string of digit substrings
**Output:** an integer

### Explicit Requirements
- take a given string
- convert it to integer
- do not use standard conversion methods
- don't worry about invalid chars or + -

### Questions

## E: Examples and Test Cases

```ruby
string_to_integer('4321') == 4321
string_to_integer('570') == 570
```



## D: Data Structures
Hash of string-integer key value pairs

an array of integers

## A: Algorithm
1. Define a method which takes a string argument
2. create a constant hash which maps substrings 0-9 to integers 0-9
3. convert the string argument to an integer
   1. convert the string to an array of characters
   2. iterate over the array mapping each char to its integer value from the hash
   3. return the integers from the hash to an array
   4. flatten the array to a single integer.
4. return integer
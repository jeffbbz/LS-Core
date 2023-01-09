# Small Problems > Easy 5 > ddaaiillyy ddoouubbllee

[Link to Problem](https://launchschool.com/exercises/690b2900)

## The Problem

Write a method that deletes consecutive duplicate characters from a given string and returns a new string


## P: Understand the Problem
**Input:** string

**Output:** new string

### Explicit Requirements
- don't use squeeze
- delete consecutive characters (leaving only one)
- non duplicates are unchanged
- empty strings return an empty string


## E: Examples and Test Cases

```ruby
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
```

## D: Data Structures

strings and an array

## A: Algorithm

**Mine**

1. write a method that takes a string argument

2. iterate over the string passing each element substring to an array of chars

3. iterate over the array of chars adding each non consecutive duplicate element to a new array and return that array

   1. add each char to the new array if that char does not equal the current last element of the array

4. join the chars of the array back into a single string

5. return the string

   **LS**

1. write a method that takes a string argument
1. initialize an index counter variable
1. initialize a new empty string
4. loop over the argument string passing non consecutive duplicates to the new string
   1. while the index is less than or equal to the length of the string - 1
      1. add the characters at each index of the of string unless that characters is equal to the character at the next index in the string
      2. increment the index counter by 1
5. return the new string
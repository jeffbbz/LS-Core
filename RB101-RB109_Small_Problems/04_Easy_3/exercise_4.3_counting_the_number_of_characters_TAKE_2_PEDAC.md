# Small Problems > Easy 3 > Counting the Number of Characters

[Link to Problem](https://launchschool.com/exercises/f85563ae)

## The Problem

Write a program that will ask a user for an input of a word or multiple  words and give back the number of characters. Spaces should not be  counted as a character.

## P: Understand the Problem
**Input:** string

- a word or multiple words

**Output:**  a string with the integer count of characters

### Explicit Requirements

- output is the number of characters
- don't count spaces
- input can be multiple words

### Implicit Requirements
- punctuation counts as a character
- return is a string with count included.
- input from user required

### Questions

- Will all the inputs be strings?

- what do we do with blank inputs?

## E: Examples and Test Cases

```ruby
"walk" => "There are 4 characters in 'walk'."

"walk, don't run" => "There are 13 characters in 'walk, don't run'."
```



## D: Data Structures

array

## A: Algorithm

1. Get input from user
1. Initialize a variable to save user input
1. split input into array of character substrings
1. Delete white space characters from array
1. count elements of array
1. output count of substrings for user.
# Small Problems > Easy 3 > Searching 101
[Link to Problem](https://launchschool.com/exercises/f4f25695)

## The Problem
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

## P: Understand the Problem
**Input:** 6 number strings (user given)
**Output:** Print a string and an array of integers

### Explicit Requirements
- Get 6 input strings from users
- search the input values for a match with last input
- Print a message regarding the status of the match

### Implicit Requirements
- Save 6 input string values to variables or collections
- input strings 

### Questions
1. Will the inputs always be strings?
   - It appears yes
2. Do we need data validation to make sure they are numbers?
   - Unclear but probably a good idea
3. Do we need to convert the strings to integers?
    - Maybe not but if we want to validate the input then maybe necessary
4. How do we handle empty input?
    - If we do data validation we ask for input again

## E: Examples and Test Cases

1. Example 1 

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].

2. Example 2

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

## D: Data Structures
An array of integers or number strings

## A: Algorithm
1. Tell user purpose of program
2. Request input and save input to variable 6x
3. Validate input is variables
   - Check if input converted to an integer and back to string is equal to input as string
4. Add first 5 values referenced by variables to an array collection
5. Iterate through array, checking if the last given input matches any of its contents
   - compare value of 6th input to value of each of the elements of the collection
6. Output message to user with results
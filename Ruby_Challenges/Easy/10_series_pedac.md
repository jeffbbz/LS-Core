### Goal

Given a string of digits, return all possible sets of consecutive numbers of a given length



### Rules

INPUT: String of digits and slice length integer

OUTPUT: An array of arrays where each array element is a set of consecutive integers found in the string

- input is string
- output is array with integers
- digits can be repeated but sets should be unique
- consecutive means that first set first element is the first char in the string and last set last element is last char in the string
- Series Class with slices instance method
- if slice size argument is larger than array length return ArgumentError



### Data Structures

- Series Class
  - constructor method
    - takes one string argument on instantation
    - stores in instance variable
  - slices instance method
    - returns ArgError is slice argument is larger than string size
    - Iterate over the string saving as an consecutive array integers from the string of the argument size



### Algorithm

- Slices method
  - return ArgError if  slice argument is larger than string size
  - convert string to array of digits
  - iterate over array of a digits with an empty array
    - for each digit, add a range of chars from that digit to the length of the argument to the new array of it is the size of the new array
    - increment the start digit by one
  - returnt he array

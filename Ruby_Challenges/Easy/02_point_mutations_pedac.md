### Goal

Create a program that calculates Hamming distance between two equal portions of DNA strands of characters



### Rules

Given two strings of chars, find the number of times that chars at the same index do not match between the shortest string and the same length of chars on the longer string

INPUT: two strings of equal number of chars

OUTPUT: integer

- strings can be different lengths
- Comparisons should be of porttions of strings of equal lenght
  - shorter string
  - same length on longer string
- strings are made up of capital alpha chars ACGT



### Data Structures

`DNA `class

 - constructor method that takes one string argument
   - initialize instance variable and stores arg there
 - public instance method `hamming_distance`  that takes one string argument
   - returns integer number of differences
 - helper method to find shorter string between two
   - compare two argumnet string with instance variable string
   - if arg is shorter create instance variable shorter to it
   - if



### Algorithm

##### hamming distance

- find shorter of two strings
  - compare lengths of strings
  - select shorter length
- iterate over shorter string counting number of differences at each index between shorter and longer
  - compare the char at the current index with the char at the same index in the longer string
    - if different then increment a counter by 1
- return integer counter value
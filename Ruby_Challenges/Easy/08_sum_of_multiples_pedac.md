### Goal

Find the sum of all multiples of the numbers in a given set of another given natural number (not negative).



### Rules

INPUTS: a number and a set of numbers

OUTPUT: an integer that is the sum of the multiples

- If no set given, use default set of [3, 5]
- natural numbers are positive including 0
- multiples are numbers that can be evening divided (remainder 0) by a number (including that number itself)
  - multiples of 3 - 3, 6, 9, 12, 15, 18... (3  % 3 == 0, 6 % 3 == 0, etc)
- multiples should be up to but not including the given number



### Data Structures

- SumOfMultiples class

  - constructor method

    - takes a wildcard array input
    - assigns arguments array to instance variable

  - to class method

    - takes an integer argument

    - finds the multiples of the intance variable set upto but not including self (helper method?)

    - sums those multiples

    - returns integer sum

      

    - to instance method

    - takes an integer argument
    - finds the multiples of the intance variable set upto but not including self (helper method?)
    - sums those multiples
    - returns integer sum



### Algorithm

- constructor
  - take wildcard array parameter and default parameter of [3, 5]
  - assign arguments to instance variable
- to instance method
  - create a range of integers from 1 to the argument number
  - iterate over the range
    - select each number that returns true for num % instance  == 0 for any element of the array instance variable
  - sum the returned array of multiples
  - return sum

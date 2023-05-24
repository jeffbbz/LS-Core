### Goal

Write a program that given a positive integer input will return a string that classifys that number as perfect, abundant or deficient

### Rules

INPUT: positive Integer

OUTPUT: String classification

- Inputs should be positive numbers
  - or raise execption
- Positive divisor = number that can be evenly divided (no remainder) into another number (excluding that number)
- Aliquot sum = the sum of positive divisors of a number
- Perfect num = Aliquot sum == original number (6 -> 1 + 2 + 3 = 6)
- Abudant num = Sum > original number
- Deficient num = Sum is < original number

- Primes are always deficient



### Data Structures

- PerfectNumber class
  - classify class method
    - checks input for validity
      - raises Standard Error if input is not positive integer
      - helper method?
    - find all divisors of input number
    - sum divisors
    - compare sum to input
    - return string

### Algorithm

Iterate over a range of numbers from 1 to the input number (excluding the input number)

- check each number and if it returns 0 as the remainder from %, add it to a new array
- sum array
- compare sum to input number
  - if the sum is equal return 'perfect'
  - if greater than return 'abundant'
  - if less return 'deficient'

This is using https://www.youtube.com/watch?v=KILmOSjjJf0

**The Problem**

Write a program that, given a number, can find the sum of all the multiples of particular numbers up to but not including that number.

If we list all the natural numbers up to but not including 20 that are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of these multiples is 78.

Write a program that can find the sum of the multiples of a given set of numbers. If no set of numbers is given, default to 3 and 5.

## P: Understanding the Problem
**Rules and Requirements**

- Input:  - Integer (a given number)
          - collection of numbers to find multiples in
- Output: - Integer (Sum of multiples of target integer) 
- There will be a given integer
- There will be a list of integers to find multiples of the the given integer amongst
- Multiples to be summed must be unique
- Target number is limit but not included as a multiple
- only natural numbers are considered
- If no numbers to get multiples are provided default 3 and 5

- Explicit Requirements:
  - Find multiples of number of group of numbers
  - sum all multiples
  - If no numbers to get multiples are provided default 3 and 5

- Implicit Requirements:
  - filter list so that multiples are unique

  - Questions
    - What will the list/collection of integers look like
      - an array
    - Will there be negative integers or 0?
      - No, only natural numbers will be considered starting from 1 (according to the question)
    - Will the inputs only be integers?
      - Yes, only natural numbers
    - What are natural numbers?
      - a set of integer numbers starting from either 0 or 1
    - What is the multiple of a number?
      - Any number when divided by a number has no remainder
        - multiples of 3 between 1 and 20: 3/3 = 1, 6/3 = 2, 9/3 = 3, 12/3 = 4, 15/3 = 5, 18/3 = 9, so Multiples of 3 are 3, 6, 9, 12, 15, 18
        - multiples of 5 between 1 and 20: 5/5 = 1, 10/5 = 2, 15/5 = 3, so multiples of 5 are 5, 10, 15

## E: Examples / Test Cases
**Examples**

Target Number = 20   Number to get Multiples = [3, 5]   Output = 78
Target Number = 20   Number to get Multiples = [3]      Output = 63
Target Number = 20   Number to get Multiples = [5]      Output = 30
Target Number = 20   Number to get Multiples = []       Output = 78
Target Number = 1    Number to get Multiples = []       Output = 0

## D: Data Structures
**Data Structure**

- Array

## A: Algorithms
**Algorithm**
1. Create an empty total multiples array
2. Create a range of numbers from 1 to target number, not including target
3. Divide the numbers in range by the given number(s) in "number the get multiples" array
   1. If no numbers given, use defaults of [3, 5]
4. Add Numbers that do not have a remainder (multiples) to the total multiples array
5. filter for numbers in array that are not unique and delete or don't add if they aren't
   1. check if number is already in array and if so don't add
6. sum all numbers in array
7. Output sum

- Algorithm Test
- total_multiples = []
- range = (1...20)
- (1...20) / 3 & 1...20) / 5
- total_multiples << ((1...20) / 3 & 1...20) / 5) with no remainders if unique
- [multiple numbers] sum them up
- return sum
/*

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, with all of its digits occurring exactly once each. For example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a function that takes an integer as an argument and returns the next featured number greater than the integer. Issue an error message if there is no next featured number.

NOTE: The largest possible featured number is 9876543201.

### GOAL

Given an input integer, return the next integer that meets the requirements for a "featured number"

### RULES
INPUT: integer
OUTPUT: integer
- featured number must be ALL of:
  - odd (num % 2 !== 0)
  - multple of 7 (num % 7 === 0)
  - no repeated digits (49 is but 133 is not)
- find the next number that meets those requirements that is higher than the input number
- if not higher available (higher than 9876543201) return "not possible"

### Algorithm
- Check if number is 9876543201 or higher if so return not possible
1. increment the input number by 1 until it is a multiple of 7
  - check if odd and not repeating digits
    - return number is true
2. increment the input number by 7
  - check if odd and not repeating digits
    - return number is true

*/

const HIGHEST_FEATURED_NUM = 9876543201;

function featured(num) {
  if (num >= HIGHEST_FEATURED_NUM) return "There is no possible number that fulfills those requirements.";

  do {
    num += 1
  } while (num % 7 !== 0)

  while (!isValid(num)) {
    num += 7
  }

  return num;
}

function isValid(number) {
  return number % 2 !== 0 && digitsAreUnique(number);
}

function digitsAreUnique(number) {
  return String(number).split('').every((digit, idx, arr) => arr.indexOf(digit) === idx);
}

console.log(featured(12));           // 21
console.log(featured(20));           // 21
console.log(featured(21));           // 35
console.log(featured(997));          // 1029
console.log(featured(1029));         // 1043
console.log(featured(999999));       // 1023547
console.log(featured(999999987));    // 1023456987
console.log(featured(9876543186));   // 9876543201
console.log(featured(9876543200));   // 9876543201
console.log(featured(9876543201));   // "There is no possible number that fulfills those requirements."
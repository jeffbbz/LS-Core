/*

A triangle is classified as follows:

    Equilateral: All three sides are of equal length.
    Isosceles: Two sides are of equal length, while the third is different.
    Scalene: All three sides are of different lengths.

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and every side must have a length greater than 0. If either of these conditions is not satisfied, the triangle is invalid.

Write a function that takes the lengths of the three sides of a triangle as arguments and returns one of the following four strings representing the triangle's classification: 'equilateral', 'isosceles', 'scalene', or 'invalid'.

### GOAL

given three integer lengths, return a string classifying what type of triangle those lenghts could form, or invalid if not possible

### RULES
INPUT: 3 integers
OUTPUT: a string
- integers can be 0 or greater
- four strings to be returned are
'equilateral',
  - all three integers are the same
  - and greater than 0
'isosceles',
  - two of the integers are the same,
  - all greater than 0, and
  - sum to greater than 3rd num
'scalene'
  - all three nums are different
  - all greater than 0, and
  - sum to greater than 3rd num
'invalid'
  - one of nums is zero
  - two of nums are not longer than third num

### Algorithm
1. RETURN OBVIOUSLY INVALID
  - if any input nums are less than 1
    - return invalid
2. Iterate over the numbers and determine triangle type
  - create and array of the input numbers
    - use spread syntax: [...inputNumbers]
  - If every num is the same
    - each num === nums[0]
    - return equilateral
  - If some of the nums are the same and those nums that are the same sum to greater than 3rd
    - if some === nums[0]
      - select those nums and sum them and compare then to themselves minus all nums summed
      if less than return iso
  - if any two nums are greater than third numb
    - if num[0] + num[1] > num[2] || num[1] + num[2] > num[0] || num[0] + num[2] > num[1]
  - return scalene
  - else return invalid

*/

function triangle(...nums) {
  if (nums.some(num => num < 1)) return "invalid";
  if (sumSides(nums) - longestSide(nums) <= longestSide(nums)) return "invalid";

  if (nums.every(num => num === nums[0])) {
    return "equilateral";
  } else if (allSidesUnique(nums)) {
    return "scalene";
  } else {
    return "isosceles";
  }
}

function longestSide(sides) {
  return Math.max(...sides)
}

function sumSides(sides) {
  return sides.reduce((sum, num) => sum + num);
}

function allSidesUnique(sides) {
  return (sides.every((side, idx) => sides
               .indexOf(side) === idx))
}

console.log(triangle(3, 3, 3));        // "equilateral"
console.log(triangle(3, 3, 1.5));      // "isosceles"
console.log(triangle(3, 4, 5));        // "scalene"
console.log(triangle(0, 3, 3));        // "invalid"
console.log(triangle(3, 1, 1));        // "invalid"
console.log(triangle(3, 1.5, 1.5));    // invalid
console.log(triangle(3, 4, 4));        // isosceles
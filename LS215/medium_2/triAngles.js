/*

A triangle is classified as follows:

    Right: One angle is a right angle (exactly 90 degrees).
    Acute: All three angles are less than 90 degrees.
    Obtuse: One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and every angle must be greater than 0. If either of these conditions is not satisfied, the triangle is invalid.

Write a function that takes the three angles of a triangle as arguments and returns one of the following four strings representing the triangle's classification: 'right', 'acute', 'obtuse', or 'invalid'.

You may assume that all angles have integer values, so you do not have to worry about floating point errors. You may also assume that the arguments are in degrees.

### GOAL

given three integers representing angles, return a string of that angle type or invalid

### RULES
INPUT 3 integers
OUTPUT string
- right has one 90
- acut has three less than 90
- obtuse has one greater than 90
- invalid has sum not 180 && every angle not greater than 0

### Algorithm
1. Check for Invalidity
  - Sum not 180
    - sum all numbers and compare to 180
    - return false if not
  - every angle not greater than 0
    - iterate over the angles as an array and check if every angle is greater than 0
    - return false if not

2. Check if Acute
  - check if every angle is less than 90
  - return acute if so

3. Check if right
  - check if at least one is 90
  -return right if so

4. Check if obtuse
  - check if at least one is greater than 90
  - return obtuse if so

*/

function triangle(...angles) {
  if (isInvalid(angles)) return "invalid";
  if (angles.every(angle => angle < 90)) return 'acute';
  if (angles.some(angle => angle === 90)) return 'right';
  return 'obtuse';
}

function isInvalid(angles) {
  return angles.reduce((sum, angle) => sum + angle) !== 180 || !angles.every(angle => angle > 0)
}

console.log(triangle(60, 70, 50));       // "acute"
console.log(triangle(30, 90, 60));       // "right"
console.log(triangle(120, 50, 10));      // "obtuse"
console.log(triangle(0, 90, 90));        // "invalid"
console.log(triangle(50, 50, 50));       // "invalid"
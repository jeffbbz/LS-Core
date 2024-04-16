/*

Write a function that takes a string argument and returns true if all of the alphabetic characters inside the string are uppercase; otherwise, return false. Ignore characters that are not alphabetic.

### Goal

Given a string, return a boolean true if all alpha chars are uppercase or false if not

### Rules
INPUT: a string
OUTPUT: boolean t/f
- empty string returns true
- non-aplpha chars do not matter/can be ignored
- if any lowercase chars contained return false, else true

### Algorithm
1. If a regex string of lowercase chars (/[a-z]/g) returns true then return false, else true

*/

function isUppercase(string) {
  return !/[a-z]/.test(string);
}

console.log(isUppercase('t'));               // false
console.log(isUppercase('T'));               // true
console.log(isUppercase('Four Score'));      // false
console.log(isUppercase('FOUR SCORE'));      // true
console.log(isUppercase('4SCORE!'));         // true
console.log(isUppercase(''));                // true
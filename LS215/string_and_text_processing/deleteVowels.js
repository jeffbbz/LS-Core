/*

Write a function that takes an array of strings and returns an array of the same string values, but with all vowels (a, e, i, o, u) removed.

### GOAL

given an array of strings, remove the vowels from each string element and return the array of string elements

### RULES
INPUT: array of strings
OUTPUT: modifed or new array of strings
- strings can be any string but only remove vowels
- vowels of all cases are removed (upper and lower)
- if the string is only vowels, return array will have an empty string element

### Algorithm
1. Iterate to transform over the array
2. transform each string element to itself minus any vowels
  - use the regex /[aeiou]/ig to replace all of those vowels with an empty string "".
3. Return the array

*/

function removeVowels(strings) {
  return strings.map(string => string.replaceAll(/[aeiou]/ig, ""));
}

console.log(removeVowels(['abcdefghijklmnopqrstuvwxyz']));         // ["bcdfghjklmnpqrstvwxyz"]
console.log(removeVowels(['green', 'YELLOW', 'black', 'white']));  // ["grn", "YLLW", "blck", "wht"]
console.log(removeVowels(['ABC', 'AEIOU', 'XYZ']));                // ["BC", "", "XYZ"]
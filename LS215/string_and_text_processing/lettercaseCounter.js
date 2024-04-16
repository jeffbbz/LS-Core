/*

Write a function that takes a string and returns an object containing three properties: one representing the number of characters in the string that are lowercase letters, one representing the number of characters that are uppercase letters, and one representing the number of characters that are neither.

### Goal

Given a string of chars return an object with three properties, the counts of the lowercase, uppercase, and niether chars in the string

### Rules
INPUT: a string
OUTPUT: an object with three properties
- string can contain any kind of char
- empty string returns an object with three properties whose values are 0
- if a property is missing from the string, value will be zero
- numbers, whitespace, symbols all count as 'neither'

### Algorithm
1. Declare a variable to an object with three properties, whose values are all set to 0
2. Split the string into an array of chars
3. Iterate over each of the chars
  - if the char matches /[A-Z]/ then increment the value of uppercase by one
  - else if the char matches /[a-z]/ then increment the value of lowercase by one
  - else if the char matches /[^A-Z]/i then increment the value of neither by one OR JUST ELSE
4. Return the object

*/

function letterCaseCount(string) {
  let counts = { lowercase: 0, uppercase: 0, neither: 0 };
  string.split('').forEach(char => {
    if (/[A-Z]/.test(char)) {
      counts.uppercase += 1;
    } else if (/[a-z]/.test(char)) {
      counts.lowercase += 1;
    } else {
      counts.neither += 1;
    }
  });

  return counts;
}

console.log(letterCaseCount('abCdef 123'));  // { lowercase: 5, uppercase: 1, neither: 4 }
console.log(letterCaseCount('AbCd +Ef'));    // { lowercase: 3, uppercase: 3, neither: 2 }
console.log(letterCaseCount('123'));         // { lowercase: 0, uppercase: 0, neither: 3 }
console.log(letterCaseCount(''));            // { lowercase: 0, uppercase: 0, neither: 0 }
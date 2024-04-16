/*

Write a function that takes a string as an argument and returns that string with every lowercase letter changed to uppercase and every uppercase letter changed to lowercase. Leave all other characters unchanged.


### Algorithm
1. Split string into an array of chars
2. Iterate over the array mapping each char to its upcase or downcase inverse or else leaving as is
    - if its upper then return lower
    - if its lower then return upper
    - else return the char
3. Join the chars back into a single string and return

*/

function swapCase(string) {
  return string.split('').map(char => {
    if (/[A-Z]/.test(char)) {
      return char.toLowerCase();
    } else if (/[a-z]/.test(char)) {
      return char.toUpperCase();
    } else {
      return char;
    }
  }).join('');
}

console.log(swapCase('CamelCase'));              // "cAMELcASE"
console.log(swapCase('Tonight on XYZ-TV'));      // "tONIGHT ON xyz-tv"
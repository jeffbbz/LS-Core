// ### Goal
//
// Given a string argument, return a boolean if that string is a palindrome
//
// ### Rules
//
// INPUT: string
// OUTPUT: boolean
// - palindrome is the same forwards and backwards
// - a palindrome should be an even number of chars
// - case and non-alphachars should be considered
//
// ### Algorithm
//
// 1. Reverse the string
// 1. Split the string into an array of chars, reverse it, and rejoin it into a string
// 2. Compare the reverse string to the original string

function isPalindrome(string) {
  let reversed = string.split('').reverse().join('');
  return reversed === string;
}


console.log(isPalindrome('madam'));               // true
console.log(isPalindrome('Madam'));               // false (case matters)
console.log(isPalindrome("madam i'm adam"));      // false (all characters matter)
console.log(isPalindrome('356653'));              // true
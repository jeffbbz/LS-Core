/*
### GOAL

Given a string, return an array of all substrings of that string which are palindromes, case-sensitive.

### Rules

INPUT: string
OUTPUT: array of substrings
- all characters are can be a part of the substring
- case matters: AbbA is / Abba is not.
- palindrome is the same forwards and backwards
- single chars are not palindromes (substrings must be greater than 1 in length)
- duplicates are included as many times as they occur.
- if there are no palindromes in the input string return an empty array

### Questions
- What if the input is an empty string?
- What if the input is not a string?

## Test Cases

palindromes('abcd');       // []
palindromes('madam');      // [ "madam", "ada" ]

palindromes('hello-madam-did-madam-goodbye');
// returns
[ "ll", "-madam-", "-madam-did-madam-", "madam", "madam-did-madam", "ada",
  "adam-did-mada", "dam-did-mad", "am-did-ma", "m-did-m", "-did-", "did",
  "-madam-", "madam", "ada", "oo" ]

palindromes('knitting cassettes');
// returns
[ "nittin", "itti", "tt", "ss", "settes", "ette", "tt" ]

### Initial Thoughts
- Iterate over the input string and find all substrings
   - Find all substrings starting from each index of the string and going until each index of the string
   - save in an array of substrings
- Filter the array of substrings for those that are:
  - greater than 1 in length AND
  - are the same forwards and reveresed
- Return the filtered array of palindromic substrings

### Algorithm
1. Iterate over the input string and find all the substrings


*/

function palindromes(string) {
  return substrings(string).filter(substring => {
    return substring.length > 1 &&
      substring.split('').reverse().join('') === substring;
  });
}

function substrings(string) {
  let result = [];

  for (let start = 0; start < string.length; start += 1) {
    for (let end = 1 + start; end <= string.length; end += 1) {
      result.push(string.substring(start, end))
    }
  }

  return result;
}

console.log(palindromes('abcd'));       // []
console.log(palindromes('madam'));      // [ "madam", "ada" ]

console.log(palindromes('hello-madam-did-madam-goodbye'));
// returns
// [ "ll", "-madam-", "-madam-did-madam-", "madam", "madam-did-madam", "ada",
//   "adam-did-mada", "dam-did-mad", "am-did-ma", "m-did-m", "-did-", "did",
//   "-madam-", "madam", "ada", "oo" ]

console.log(palindromes('knitting cassettes'));
// returns
// [ "nittin", "itti", "tt", "ss", "settes", "ette", "tt" ]
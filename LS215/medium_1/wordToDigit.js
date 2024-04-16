/*

Write a function that takes a sentence string as an argument and returns that string with every occurrence of a "number word" — 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' — converted to its corresponding digit character.


### GOAL

Given a string of number words and other chars, return the same string with number words replaced by string nums

### Rules
INPUT: a string
OUTPUT: a string

Using Regex:

numString = '0123456789'
numwords = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

numwords.forEach((numWord, idx) => {
  string.replaceAll(numWord, numString[idx])
})

string.replaceAll(/[

### Algorithm
1.

*/

const NUM_STRING = '0123456789'
const NUM_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

function wordToDigit(string) {
  let result = string;
  NUM_WORDS.forEach((numWord, idx) => {
    let regex = new RegExp('\\b' + numWord + '\\b', 'g');
    result = result.replaceAll(regex, NUM_STRING[idx]);
  })
  return result;
}

console.log(wordToDigit('Please call me at five five five one two three four. Thanks.'));
// "Please call me at 5 5 5 1 2 3 4. Thanks."

console.log(wordToDigit('The weight is done.'));      // "The w8 is d1."
/*

Write a function that takes a string as an argument and returns that string with the first character of every word capitalized and all subsequent characters in lowercase.

You may assume that a word is any sequence of non-whitespace characters.

### Algorithm
1. Split the string into and array of words
2. Iterate over the array and transform the first char of each word to its upcase version
  and the rest of the word to its lowercase version
3. Join the string array back into a string on the spaces
*/

function wordCap(string) {
  return string.split(' ')
    .map((word => word[0].toUpperCase() + word.slice(1).toLowerCase()))
    .join(' ');
}

console.log(wordCap('four score and seven'));       // "Four Score And Seven"
console.log(wordCap('the javaScript language'));    // "The Javascript Language"
console.log(wordCap('this is a "quoted" word'));    // 'This Is A "quoted" Word'
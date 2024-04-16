//
// function swap(string) {
//   return string.split(' ').map(word => {
//     return word.split('').map(char => {
//       if (char === word[0]) {
//         return word[word.length - 1];
//       } else if (char === word[word.length - 1]) {
//         return word[0];
//       } else {
//         return char;
//       }
//     }).join('')
//   }).join(' ')
// }
//
// console.log(swap('Oh what a wonderful day it is'));  // "hO thaw a londerfuw yad ti si"
// console.log(swap('Abcde'));                          // "ebcdA"
// console.log(swap('a'));                              // "a"

// Refactor

function swap(string) {
  return string.split(' ').map(word => swapFirstLastChar(word)).join(' ')
}

function swapFirstLastChar(word) {
  return word.split('').map(char => {
    if (char === word[0]) {
      return word[word.length - 1];
    } else if (char === word[word.length - 1]) {
      return word[0];
    } else {
      return char;
    }
  }).join('')
}

console.log(swap('Oh what a wonderful day it is'));  // "hO thaw a londerfuw yad ti si"
console.log(swap('Abcde'));                          // "ebcdA"
console.log(swap('a'));                              // "a"
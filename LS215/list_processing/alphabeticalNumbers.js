const NUM_WORDS = [
  'zero',
  'one',
  'two',
  'three',
  'four',
  'five',
  'six',
  'seven',
  'eight',
  'nine',
  'ten',
  'eleven',
  'twelve',
  'thirteen',
  'fourteen',
  'fifteen',
  'sixteen',
  'seventeen',
  'eighteen',
  'nineteen'
]

// function alphabeticNumberSort(numArr) {
//   let numWordsArr = numArr.map(num => NUM_WORDS[num]);
//   return numWordsArr.sort().map(word => numArr[NUM_WORDS.indexOf(word)]);
// }
//
// console.log(alphabeticNumberSort(
//   [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]));
// // [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

// Similar to LS Solution

function sortNumbersAsWords(num1, num2) {
  if (NUM_WORDS[num1] > NUM_WORDS[num2]) {
    return 1;
  } else if (NUM_WORDS[num1] < NUM_WORDS[num2]) {
    return -1;
  } else {
    return 0;
  }
}

function alphabeticNumberSort(numArr) {
  return numArr.toSorted(sortNumbersAsWords)
}

let arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]

console.log(alphabeticNumberSort(arr));
// [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
console.log(arr)
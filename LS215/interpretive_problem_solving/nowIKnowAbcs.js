"use strict";

const BLOCKS = [
  ['B', 'O'],
  ['X', 'K'],
  ['D', 'Q'],
  ['C', 'P'],
  ['N', 'A'],
  ['G', 'T'],
  ['R', 'E'],
  ['F', 'S'],
  ['J', 'W'],
  ['H', 'U'],
  ['V', 'I'],
  ['L', 'Y'],
  ['Z', 'M'],
];

function isBlockWord(word) {
  let blocksCopy = structuredClone(BLOCKS);

  for (let charIdx = 0; charIdx < word.length; charIdx += 1) {
    let included = false;
    let char = word[charIdx].toUpperCase();

    for (let arrIdx = 0; arrIdx < blocksCopy.length; arrIdx += 1) {
      if (blocksCopy[arrIdx].includes(char)) {
        included = true;
        blocksCopy.splice(arrIdx, 1);
        break;
      }
    }
    if (included === false) return false
  }

  return true
}

console.log(isBlockWord('@ATCH'));      // false
console.log(isBlockWord('BATCH'));      // true
console.log(isBlockWord('jest'));       // true
console.log(isBlockWord('baTCH'));      // true
console.log(isBlockWord('BUTCH'));      // false
console.log(isBlockWord('book'));       // false
console.log(isBlockWord('briBe'));      // false
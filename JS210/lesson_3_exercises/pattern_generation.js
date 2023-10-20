const PATTERN = '*'

function generatePattern(rows) {
  let numbers = ''
  for (let number = 1; number <= rows; number += 1) {
    numbers += String(number)
    let symbols = PATTERN.repeat(rows - number)
    let result = numbers + symbols
    console.log(result);
  }
}

generatePattern(9);

// console output
// 1********
// 12*******
// 123******
// 1234*****
// 12345****
// 123456***
// 1234567**
// 12345678*
// 123456789

// Further Exploration

function generatePattern(nStars) {
  let lastRowString = '';

  for (let lineNumber = 1; lineNumber <= nStars; lineNumber += 1) {
    lastRowString += String(lineNumber);
  }

  let width = lastRowString.length;

  for (let lineNumber = 1; lineNumber <= nStars; lineNumber += 1) {
    let string = '';
    for (let digit = 1; digit <= lineNumber; digit += 1) {
      string += String(digit);
    }

    let numberOfStars = width - string.length;
    for (let count = 1; count <= numberOfStars; count += 1) {
      string += '*';
    }

    console.log(string);
  }
}

generatePattern(20);
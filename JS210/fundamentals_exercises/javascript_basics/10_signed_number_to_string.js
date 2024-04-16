const DIGITS = '0123456789'

function integerToString(number) {
  if (number === 0) return '0';

  let digitCount = Math.floor(Math.log10(number)) + 1
  let numStrings = [];

  for (let count = 0; count < digitCount; count += 1) {
    numStrings.push(number % 10);
    number = Math.trunc(number / 10);
  }

  numStrings.reverse().map((num, idx) => DIGITS[idx]);
  return numStrings.join('');
}

function signedIntegerToString(number) {
  let prefix = '+';
  if (number < 0 || Object.is(number, -0)) {
    prefix = '-';
    number = Math.abs(number);
  } else if (number === 0) {
    prefix = '';
  }

  return prefix + integerToString(number);
}

console.log(signedIntegerToString(4321));      // "+4321"
console.log(signedIntegerToString(-123));      // "-123"
console.log(signedIntegerToString(0));         // "0"
console.log(signedIntegerToString(-0));        // "-0"
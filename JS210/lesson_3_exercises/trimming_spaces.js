function trimFront(string) {
  let newString = '';
  let front = true;

  for ( let startIndex = 0; startIndex < string.length; startIndex += 1 ) {
    if (front === true && string[startIndex] !== ' ') {
      newString += string[startIndex];
      front = false;
    } else if (front === false) {
      newString += string[startIndex];
    }
  }
  return newString;
}

function trimBack(string) {
  let newString = '';
  let back = true;

  for ( let endIndex = string.length - 1; endIndex > -1; endIndex -= 1 ) {
    if (back === true && string[endIndex] !== ' ') {
      newString += string[endIndex];
      back = false;
    } else if (back === false) {
      newString += string[endIndex];
    }
  }
  return newString;
}

function reverseString(string) {
  let reversedString = ''

  for (let finalIndex = string.length - 1; finalIndex > -1; finalIndex -= 1) {
    reversedString += string[finalIndex];
  }
  return reversedString;
}

function trim(string) {
  let newString = trimFront(string);
  newString = trimBack(newString);
  return reverseString(newString);
}

console.log(trim('  abc  '));  // "abc"
console.log(trim('abc   '));   // "abc"
console.log(trim(' ab c'));    // "ab c"
console.log(trim(' a b  c'));  // "a b  c"
console.log(trim('      '));   // ""
console.log(trim(''));         // ""
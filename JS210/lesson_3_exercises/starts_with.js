function startsWith(string, searchString) {
  let index = 0
  for (; index < searchString.length; index += 1) {
    if (string[index] !== searchString[index]) {
      break;
    }
  }

  return (index === searchString.length)
}

let str = 'We put comprehension and mastery above all else';
console.log(startsWith(str, 'We'));              // true
console.log(startsWith(str, 'We put'));          // true
console.log(startsWith(str, ''));                // true
console.log(startsWith(str, 'put'));             // false

let longerString = 'We put comprehension and mastery above all else!';
console.log(startsWith(str, longerString));      // false

// Shorter based on LS example

function startsWith(string, searchString) {
  for (let index = 0; index < searchString.length; index += 1) {
    if (string[index] !== searchString[index]) {
      return false;
    }
  }

  return true;
}
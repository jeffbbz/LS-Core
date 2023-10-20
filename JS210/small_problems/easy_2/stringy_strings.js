function stringy(number) {
  let numString = '1';
  for (let count = 2; count <= number; count += 1) {
    if (count % 2 === 0) {
      numString += '0';
    } else {
      numString += '1';
    }
  }

  return numString;
}




console.log(stringy(6));    // "101010"
console.log(stringy(9));    // "101010101"
console.log(stringy(4));    // "1010"
console.log(stringy(7));    // "1010101"
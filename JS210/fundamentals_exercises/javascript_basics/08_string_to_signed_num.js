
function stringToInteger(numString) {
  let prefix = 1;
  let string = numString;

  switch (numString[0]) {
    case '-':
      prefix = -1;
      string = numString.slice(1);
      break;
    case '+':
      string = numString.slice(1);
      break;
  }

  const STRING2NUM = {
    1: 1,
    2: 2,
    3: 3,
    4: 4,
    5: 5,
    6: 6,
    7: 7,
    8: 8,
    9: 9,
    0: 0,
  };

  let number = 0;
  for (let index = 0; index < string.length; index += 1) {
    number += STRING2NUM[string[index]] * 10**(string.length - 1 - index);
  }

  return number * prefix;
}

console.log(stringToInteger('4321'));      // 4321
console.log(stringToInteger('-570'));      // -570
console.log(stringToInteger('+100'));      // 100
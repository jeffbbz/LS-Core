// GOAL

// Write a function that converts a given string representation of a number into
// a number primitive

// RULES
// INPUT: string rep of a number
// OUTPUT: a number

// - don't worry about + or - signs
// - all chars are numeric
// - strings are zero-indexed

// THOUGHTS

// string = '4321',
// string[0] = '4'
// string[1] = '3'
// string[2] = '2'
// string[3] = '1'
// string.length = 4
//
// to make the right tens placement:
//
// length - 1 - index = # of zeros
// 4000 = element as number * 10**(4 - 1 - 0)
//  300 = element as number * 10**(4 - 1 - 1)
//   20 = element as number * 10**(4 - 1 - 2)
//    1 = element as number * 10**(4 - 1 - 3)
//
// - Define an object that maps chars to numbers 0-9
// - Declare a number variable to 0
// - iterate through the string chars by index
// - for each char find its number value in the object
//     - then multiply it by 10 to the power of length minus one minus current index
// - re-assign the number variable to its current value plus the next value
// - return the number


function stringToInteger(numString) {
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
  for (let index = 0; index < numString.length; index += 1) {
    number += STRING2NUM[numString[index]] * 10**(numString.length - 1 - index);
  }

  return number;
}

console.log(stringToInteger('4321'));      // 4321
console.log(stringToInteger('570'));       // 570
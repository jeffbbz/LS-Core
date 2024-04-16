/*

Take the number 735291 and rotate it by one digit to the left, getting 352917. Next, keep the first digit fixed in place and rotate the remaining digits to get 329175. Keep the first two digits fixed in place and rotate again to get 321759. Keep the first three digits fixed in place and rotate again to get 321597. Finally, keep the first four digits fixed in place and rotate the final two digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a function that takes an integer as an argument and returns the maximum rotation of that integer. You can (and probably should) use the rotateRightmostDigits function from the previous exercise.

### GOAL

given an integer, return the maximum rotation of that integer as an integer

### Rules
INPUT: integer
OUTPUT: integer

Rotate as follows

735291 -> 352917 (Keep first 0 digits in place, '',   and Move 1st digit, 7,  to end)
352917 -> 329175 (Keep first 1 digits in place, 3,    and Move 2nd digit, 5,  to end)

3 5 2917

329175 -> 321759 (Keep first 2 digits in place, 32,   and Move 3rd digit, 9,  to end)
321759 -> 321597 (Keep first 3 digits in place, 321,  and Move 4th digit, 7,  to end)
321597 -> 321579 (Keep first 4 digits in place, 3215, and Move 5th digit, 9,  to end)

Length - 1 Times rotate
- on each interation keep the first x ++ # of digits and move the following digit to the end

### Algorithm
1. Convert the input number to a string
2. Loop length -1 times, incrementing a digit counter each time by 1
  - On each interation, Slice from 0 to the digit counter and store in a variable
  - then from the digit counter slice 1 char and store in a variable
  - prepend the rest of the string by the first var and append by the second
3. convert back into a number and return

*/

function maxRotation(number) {
  let stringNum = String(number);
  for (let digits = 0; digits < stringNum.length - 1; digits += 1) {
    let front = stringNum.slice(0, digits);
    let back = stringNum.slice(digits, digits + 1);
    let middle = stringNum.slice(digits + 1);
    stringNum = front + middle + back;
  }

  return Number(stringNum);
}


console.log(maxRotation(735291));          // 321579
console.log(maxRotation(3));               // 3
console.log(maxRotation(35));              // 53
console.log(maxRotation(105));             // 15 -- the leading zero gets dropped
console.log(maxRotation(8703529146));      // 7321609845
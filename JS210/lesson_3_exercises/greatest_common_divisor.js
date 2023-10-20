// function gcd(num1, num2) {
//   let greatest = 1;
//   let lesser = num1 < num2 ? num1 : num2;
//   for (let possibleDivisor = 2; possibleDivisor <= lesser; possibleDivisor += 1) {
//     if (num1 % possibleDivisor === 0 && num2 % possibleDivisor === 0) {
//       greatest = possibleDivisor;
//     }
//   }
//   return greatest;
// }

console.log(gcd(12, 4));   // 4
console.log(gcd(15, 10));  // 5
console.log(gcd(9, 2));    // 1

// LS Answer

function gcd(num1, num2) {
  let temp;

  while (num2 !== 0) {
    temp = num2;
    num2 = num1 % num2;
    num1 = temp;
  }

  return num1;
}



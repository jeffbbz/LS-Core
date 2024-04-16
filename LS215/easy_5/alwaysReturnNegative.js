
// function negative(number) {
//   if (number >= 0) {
//     return number * -1;
//   } else {
//     return number;
//   }
// }


// console.log(negative(5));     // -5
// console.log(negative(-3));    // -3
// console.log(negative(0));     // -0

// FE with Ternary

function negative(number) {
  return number >= 0 ? -number : number;
}

console.log(negative(5));     // -5
console.log(negative(-3));    // -3
console.log(negative(0));     // -0


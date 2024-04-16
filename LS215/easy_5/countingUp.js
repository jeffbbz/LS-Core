

//
// function sequence(endInteger) {
//   let arr = [];
//   for (let number = 1; number <= endInteger; number += 1) {
//     arr.push(number);
//   }
//   return arr;
// }
//
// console.log(sequence(5));    // [1, 2, 3, 4, 5]
// console.log(sequence(3));    // [1, 2, 3]
// console.log(sequence(1));    // [1]

// or with Sparse Array and Map
// function sequence(endInteger) {
//   return [...Array(endInteger)].map((_, idx) => idx + 1);
// }
//
// console.log(sequence(5));    // [1, 2, 3, 4, 5]
// console.log(sequence(3));    // [1, 2, 3]
// console.log(sequence(1));    // [1]

// assigning keys to elements and mapping to +1
// function sequence(endInteger) {
//   return [...Array(endInteger).keys()].map(num => num + 1);
// }
//
// console.log(sequence(5));    // [1, 2, 3, 4, 5]
// console.log(sequence(3));    // [1, 2, 3]
// console.log(sequence(1));    // [1]

// Yet another version

function sequence(endInteger) {
  return Array(endInteger).fill(1).map((num, idx) => idx + num)
}

console.log(sequence(5));    // [1, 2, 3, 4, 5]
console.log(sequence(3));    // [1, 2, 3]
console.log(sequence(1));    // [1]
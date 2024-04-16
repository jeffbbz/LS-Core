

// function halvsies(array) {
//   // let halves = [];
//   let half = Math.ceil(array.length / 2)
//   // halves.push(array.slice(0, half), array.slice(half));
//   return [array.slice(0, half), array.slice(half)]
// }
//
// console.log(halvsies([1, 2, 3, 4]));       // [[1, 2], [3, 4]]
// console.log(halvsies([1, 5, 2, 4, 3]));    // [[1, 5, 2], [4, 3]]
// console.log(halvsies([5]));                // [[5], []]
// console.log(halvsies([]));                 // [[], []]

// refactor

function halvsies(array) {
  let half = Math.ceil(array.length / 2)
  return [array.slice(0, half), array.slice(half)]
}

console.log(halvsies([1, 2, 3, 4]));       // [[1, 2], [3, 4]]
console.log(halvsies([1, 5, 2, 4, 3]));    // [[1, 5, 2], [4, 3]]
console.log(halvsies([5]));                // [[5], []]
console.log(halvsies([]));                 // [[], []]

function runningTotal (array) {
  if (array[0] === undefined) return '[]'
  let total = [array[0]]
  for (let idx = 1; idx < array.length; idx += 1) {
    total.push(total[idx - 1] + array[idx])
  }
  return total
}

console.log(runningTotal([2, 5, 13]));             // [2, 7, 20]
console.log(runningTotal([14, 11, 7, 15, 20]));    // [14, 25, 32, 47, 67]
console.log(runningTotal([3]));                    // [3]
console.log(runningTotal([]));                     // []

// Further Exploration with Map

function runningTotal (array) {
  let sum = 0;
  return array.map(num => sum += num);
}

console.log(runningTotal([2, 5, 13]));             // [2, 7, 20]
console.log(runningTotal([14, 11, 7, 15, 20]));    // [14, 25, 32, 47, 67]
console.log(runningTotal([3]));                    // [3]
console.log(runningTotal([]));                     // []
function shift(arr) {
  if (arr.length === 0) return undefined

  return arr.splice(0, 1)[0]
}

function unshift(arr, ...elements) {
  let neededlength = (arr.length + elements.length) - 1

  for (let index = elements.length; index >=0 ; index -= 1) {
    // arr[elIndex + elements.length] = elements[elIndex];
    arr[neededlength] = arr[index];
    neededlength -= 1
  }

  for (let index = 0; index < elements.length ; index += 1) {
    arr[index] = elements[index];
  }

  return arr.length;
}

// 123
// 012
//
// 2 = 1
// 3 = 2
// 4 = 3
//
// 56123
// 01234


console.log(shift([1, 2, 3]));                // 1
console.log(shift([]));                       // undefined
console.log(shift([[1, 2, 3], 4, 5]));        // [1, 2, 3]

console.log(unshift([1, 2, 3], 5, 6));        // 5
console.log(unshift([1, 2, 3]));              // 3
console.log(unshift([4, 5], [1, 2, 3]));      // 3

const testArray = [1, 2, 3];
console.log(shift(testArray));                // 1
console.log(testArray);                       // [2, 3]
console.log(unshift(testArray, 5));           // 3
console.log(testArray);                       // [5, 2, 3]
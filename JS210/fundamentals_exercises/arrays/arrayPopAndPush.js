function pop(arr) {
  return arr.splice(arr.length - 1, 1);
}

// Further Exploration pop method without slice
// function pop(arr) {
//   if (arr.length === 0) {
//     return undefined;
//   }
//
//   let returnVal = arr[arr.length - 1]
//   arr.length -= 1;
//   return returnVal;
// }

function push(arr, ...elements) {
  for (let argIndex = 0; argIndex < elements.length; argIndex += 1) {
    arr[arr.length] = elements[argIndex];
  }

  return arr.length
}

// pop
const array1 = [1, 2, 3];
pop(array1);                        // 3
console.log(array1);                // [1, 2]
console.log(pop([]));                           // undefined
console.log(pop([1, 2, ['a', 'b', 'c']]));      // ["a", "b", "c"]

// push
const array2 = [1, 2, 3];
push(array2, 4, 5, 6);              // 6
console.log(array2);                // [1, 2, 3, 4, 5, 6]
console.log(push([1, 2], ['a', 'b']));          // 3
console.log(push([], 1));                       // 1
console.log(push([]));                          // 0
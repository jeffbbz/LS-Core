function firstElement<T>(arr: T[]): T | undefined {
  return arr[0];
}

console.log(firstElement([7, 9, 11])); // 7
console.log(firstElement([])); // undefined

// or

// function firstElement<T>(arr: T[]): T | undefined {
//   if (Array.isArray(arr)) {
//     return arr[0];
//   } else {
//     return undefined;
//   }
// }

// console.log(firstElement([7, 9, 11])); // 7
// console.log(firstElement([])); // undefined

// This example uses a generic to create a function that accepts an array of any type and returns
// a value of any type, while still maintain some type safety checks.

// We give the generic function type variable T which will be assigned the function caller's type

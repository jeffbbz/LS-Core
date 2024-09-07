function isStringArray(arr: unknown[]): arr is string[] {
  return arr.every(el => typeof el === 'string');
}

console.log(isStringArray([1, 2, 3])); // false
console.log(isStringArray(["test", "string"])); // true

// Here we use a type predicate as our function return value type. This tells TS that if
// the return value of the function is true then the type predicate is true, the arr is
// a string array. This allows our function to act as a runtime type guard
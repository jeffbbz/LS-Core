function printLength(value: string | string[]): void {
  if (Array.isArray(value)) {
    console.log(`Array count: ${value.length}`);
  } else {
    console.log(`String length: ${value.length}`);
  }
}

printLength("hello"); // String length: 5
printLength(["hello", "world"]); // Array count: 2

// Here we use type narrowing to narrow our union type and allow the type checker to know when the value is a string
// and when it is an array of strings. First check if it is an array. If it is then
// the compiler knows it is safe to use array methods. If it is not then we know that it must be a string
// because this is the only other one allowed according to the union.
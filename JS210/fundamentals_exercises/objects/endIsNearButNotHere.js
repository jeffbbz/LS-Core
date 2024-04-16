function penultimate(string) {
  return string.split(' ')[-2];
}

console.log(penultimate('last word'));                    // expected: "last"
console.log(penultimate('Launch School is great!'));      // expected: "is"

// Both lines 5 and 6 will return undefined. This is because after calling the String.split method on the string
// we pass in as an argument, which returns an array of strings split on the ' ' argument passed to the method,
// we attempt to access the second to last element of the array with negative index value of 2. However, in JS array
// elements can only have non-negative integer indexes. JS thinks we are attempting to access a non-element property
// of the array with a key of -2. As this does not exist in the array, we instead return `undefined`.

// There are several ways in which this could be fixed and below I will illustrate what are perhaps the two simplest.

// with Array.slice method

function penultimate1(string) {
  return string.split(' ').slice(-2, -1)[0];
}

console.log(penultimate1('last word'));                    // expected: "last"
console.log(penultimate1('Launch School is great!'));      // expected: "is"

// Above we call Array.slice method on the array returned by Array.split. Array.slice takes two optional start and end
// parameters and returns a new array which is a shallow copy of the calling array selected according to the arguments passed
// to the method call. In this case, we pass two arguments -2 as the start argument and -1 as the end argument.
// Negative start values count from the back of the array, subtracting the value from the lenght of the array. Here
// -2 starts us on the second to last element of the array. Negative end values do the same, so we end on the last
// element of the array. This returns a new array whose sole element is the second to last word. We then use bracket
// notation to access the element at index 0 and return that value.

// with Array.length property

function penultimate2(string) {
  let stringArr = string.split(' ');
  return stringArr[stringArr.length - 2]
}

console.log(penultimate2('last word'));                    // expected: "last"
console.log(penultimate2('Launch School is great!'));      // expected: "is"

// Here we add an extra line before our return to declare a function local variable stringArr to reference the new array
// returned by the Array.split method call on the string argument passed to the enclosing function. We then use bracket notation
// to access the array element at the index of the length of the array minus 2 which will be the second to last element, which is
// what we return as the return value of the penulitmate function.
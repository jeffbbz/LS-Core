const array1 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo'];
const array2 = [];

for (let i = 0; i < array1.length; i += 1) {
  array2.push(array1[i]);
}

for (let i = 0; i < array1.length; i += 1) {
  if (array1[i].startsWith('C')) {
    array1[i] = array1[i].toUpperCase();
  }
}

console.log(array2);

// [
//   'Moe',     'Larry',
//   'Curly',   'Shemp',
//   'Harpo',   'Chico',
//   'Groucho', 'Zeppo'
// ]

// Line 14 will log an array which looks identical to the array `array1` was initialized to on line 1. This is because
// the for loop on lines 4-6 effectively makes a shallow copy of array1 to array2, by passing the current element on each iteration into array2 array
// with Array.push. Following this loop, both arrays have identical elements but they are not the same arrays, and array1 and array2 do not
// share a reference. Additionally, because the elements of both arrays are string primitives, they are immutable and when copied to another array
// and actual copy is made not just a reference. Thus when the for loop on lines 8-12 mutates the array referenced by array1, upcasing any string element that
// begins with an upcase 'C', this has no affect on the array referenced by array2, which is a different array with different (although identical) elements

// Further Exploration:

// What would happen if an object literal was part of the array1 elements pushed to array2?
// Would changes made to the object literal in array1 be reflected in array2?

// If an object literal is an element of an array and is copied to another array, what is actually copied is a reference to that object literal.
// Thus any changes made to the object literal in either array would be reflected in the other.

// How would you change the code so that any changes made to array1 in the second for loop get reflected to array2?
// If we initialized array2 to array1, then both variables would hold the same reference to the same array. Then any mutations made to either
// would be reflected in the other:

const array1 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo'];
const array2 = array1;

for (let i = 0; i < array1.length; i += 1) {
  if (array1[i].startsWith('C')) {
    array1[i] = array1[i].toUpperCase();
  }
}

console.log(array2);

// [
//   'Moe',     'Larry',
//   'CURLY',   'Shemp',
//   'Harpo',   'CHICO',
//   'Groucho', 'Zeppo'
// ]

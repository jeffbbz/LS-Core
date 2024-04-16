const myArray = [5, 5];
myArray[-1] = 5;
myArray[-2] = 5;

function average(array) {
  let sum = 0;

  for (let i = -2; i < array.length; i += 1) {
    sum += array[i];
  }

  return sum / array.length;
}

console.log(average(myArray));   // 10

// This code will not return the average of 5 but will return 10. This is because the array has 2 element (non-negative integer keys/indexes) properties and two non element properties
// all of which have a value of 5. However, non element properites are not counted by the length property of an array so we will only
// divide the sum by 2 which will result in 10.

const myArray = [5, 5];
myArray[-1] = 5;
myArray[-2] = 5;

function average(array) {
  let sum = 0;

  for (let i = -2; i < array.length; i += 1) {
    sum += array[i];
  }

  return sum / Object.keys(array).length;
}

console.log(average(myArray));   // 10

// We can fix this code by dividing the sum by the length of the array returned by calling Object.keys and passing in the
// array which will return a new array of all the keys in the argument array. For an array, the standard elements have keys
// which correspond to thier index values and the non-element properties will return thier name keys. The length of this array
// will be equal to all properties in the array and therefore provide the correct answer to average.
function reduceToUnique(arr) {
  let anchor = 0; // moves when element is same as runner?
  let runner = 1; // moves each time

  while (runner < arr.length) {
    if (arr[runner] !== arr[anchor]) {
      anchor++;
      arr[anchor] = arr[runner]
    }
    runner++;
  }

  return anchor + 1;
}


// You should name the function `reduceToUnique` for the tests to work correctly.

function testReduceToUnique(array, expectedLength) {
  const originalReference = array;
  const resultLength = reduceToUnique(array);
  const isSameObject = originalReference === array;
  const isLengthCorrect = resultLength === expectedLength;
  const isModifiedCorrectly = array.slice(0, expectedLength).every((val, idx, arr) => idx === 0 || val > arr[idx - 1]);
  console.log(array)
  return isSameObject && isLengthCorrect && isModifiedCorrectly;
}

console.log(testReduceToUnique([3, 3, 5, 7, 7, 8], 4));
console.log(testReduceToUnique([1, 1, 2, 2, 2, 3, 4, 4, 5], 5));
console.log(testReduceToUnique([0], 1));
console.log(testReduceToUnique([-5, -3, -3, -1, 0, 0, 0, 1], 5));
console.log(testReduceToUnique([6, 6, 6, 6, 6, 6, 6], 1));

// All tests should log true.
function multiplyAllPairs(arr1, arr2) {
  let result = [];
  arr1.forEach(num1 => {
    arr2.forEach(num2 => result.push(num1 * num2));
    });

  return result.sort((a, b) => a - b);
}

console.log(multiplyAllPairs([2, 4], [4, 3, 1, 2]));    // [2, 4, 4, 6, 8, 8, 12, 16]

// Another Version with map, but maybe less readable?

function multiplyAllPairs2(arr1, arr2) {
  let result = arr1.flatMap(num1 => arr2.map(num2 => num1 * num2));
  return result.sort((a, b) => a - b);
}

console.log(multiplyAllPairs2([2, 4], [4, 3, 1, 2]));    // [2, 4, 4, 6, 8, 8, 12, 16]
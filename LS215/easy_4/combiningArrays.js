function union(arr1, arr2) {
  let longerLength = arr1.length > arr2.length ? arr1.length : arr2.length;
  let joined = []
  for (let idx = 0; idx < longerLength; idx += 1) {
    if (arr1[idx] !== undefined && !joined.includes(arr1[idx])) {
      joined.push(arr1[idx]);
    }
    if (arr2[idx] !== undefined && !joined.includes(arr2[idx])) {
      joined.push(arr2[idx]);
    }
  }
  return joined.sort((a, b) => a - b);
}

console.log(union([1, 3, 5], [3, 6, 9]));    // [1, 3, 5, 6, 9]
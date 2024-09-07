// find each k length subset
// find sum of subset
// find average of subset (sum / k)

function findAverages(arr, length) {
  let left = 0;
  let sum = 0;
  let avgs = [];

  for (let right = 0; right < arr.length; right++) {
    sum += arr[right];

    if (right >= length - 1) {
      avgs.push(sum / length);
      sum -= arr[left];
      left++
    }
  }

  return avgs;
}


console.log(findAverages([1, 2, 3, 4, 5, 6], 3)); // [ 2, 3, 4, 5 ]
console.log(findAverages([1, 2, 3, 4, 5], 2));    // [1.5, 2.5, 3.5, 4.5]
console.log(findAverages([10, 20, 30, 40, 50], 4)); // [ 25, 35 ]
console.log(findAverages([5, 5, 5, 5, 5], 1));      // [ 5, 5, 5, 5, 5 ]
console.log(findAverages([1, 3, 2, 6, -1, 4, 1, 8, 2], 5)); // [2.2, 2.8, 2.4, 3.6, 2.8]
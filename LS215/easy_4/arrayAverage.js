
function average(numArr) {
  return Math.floor(numArr.reduce((sum, num) => sum + num) / numArr.length);
}

console.log(average([1, 5, 87, 45, 8, 8]));       // 25
console.log(average([9, 47, 23, 95, 16, 52]));    // 40
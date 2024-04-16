/*

Write a function that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

*/

function sumSquareDifference(number) {
  let range = [...Array(number + 1).keys()].slice(1);
  return squareSum(range) - sumSquares(range)
}

function squareSum(nums) {
  return nums.reduce((sum, num) => sum + num) ** 2;
}

function sumSquares(nums) {
  return nums.reduce((sum, num) => sum + num ** 2);
}

console.log(sumSquareDifference(3));      // 22 --> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
console.log(sumSquareDifference(10));     // 2640
console.log(sumSquareDifference(1));      // 0
console.log(sumSquareDifference(100));    // 25164150
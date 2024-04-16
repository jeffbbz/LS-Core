function getSelectedColumns(numbers, cols) {
  var result = [];

  for (var i = 0, outerLength = numbers.length; i < outerLength; i += 1) {
    for (var j = 0, innerLength = cols.length; j < innerLength; j += 1) {
      if (!result[j]) {
        result[j] = [];
      }

      result[j][i] = numbers[i][cols[j]];
    }
  }

  return result;
}

// given the following arrays of number arrays
const array1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
const array2 = [[1, 2, 3], [1, 2, 3], [1, 2, 3]];

// `array1` in row/column format
// [[1, 2, 3],
//  [4, 5, 6],
//  [7, 8, 9]]

console.log(getSelectedColumns(array1, [0]));     // [[1]];            expected: [[1, 4, 7]]
console.log(getSelectedColumns(array1, [0, 2]));  // [[1, 4], [3, 6]]; expected: [[1, 4, 7], [3, 6, 9]]
console.log(getSelectedColumns(array2, [1, 2]));  // [[2, 2], [3, 3]]; expected: [[2, 2, 2], [3, 3, 3]]

// The problem here is that we use a variable named length in both the inner and the outer loop. When we first declare and intialize
// length on line 4, we assign it to the value of the length property of the numbers array, which in the case of line 26 and thus array1, is 3.
// However, on line 5 when we again attempt to declare a length variable, as it is already declared, we instead re-assign it to the length property of
// the array referenced by cols, which in the case of line 26 is 1. This true because we have declared the variables with var which
// gives them function scope rather than the block scope of let. Thus when the inner loop meets the condition to cease iteration, and we return to
// the outer loop, on the next iteration, instead of the loop condition being while i is less than 3 (in this case), we now have as our condition,
// while i is less than 1. And as this is the second iteration of the outer loop, i is now equal to 1, which means that the outer loop will not run again
// and we will return the result on line 14, having only done one iteration of each loop. The same holds true for lines 27 and 28 but instead of once we will
// iterate twice due to the length of the arrays referneced by the cols variable. We can solve this problem as I have above by given different names
// to the length variable of each loop. We could also solve this by declaring the length variable with let, which would give them block scope instead.
// Thus restricting them to loops they were declared in.
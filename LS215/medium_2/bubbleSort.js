/*

Write a function that takes an array as an argument and sorts that array using the bubble sort algorithm described above. The sorting should be done "in-place" — that is, the function should mutate the array. You may assume that the array contains at least two elements.

### Algorithm
1. Declare a variable to track swapping
2. Loop while that variable is equal to false (use do...while so that it runs at least once
3. re-assign swap variable to false
4. Inner Loop over each element of the array, incrementing the index by one
  - Compare the element at the current index with the element at the next index
  - If the current element is greater
    - use array destructering to swap the values of each element
    - re-assign swapped to true
5. If swapped has not been re-assigned to true, this means that nothing was swapped, in which case the while loop can end and we can return the sorted array.
6. If swapped has been re-assigned this means a swap occured and we repeated the while, loop and the inner for loop.

OPTIMIZATION
- The length iterated over can be decremented by after each pass as the last n number of elements do not change after n number of passes

*/

// Original

function bubbleSort1(array) {
  let swapped;

  do {
    swapped = false;
    for (let idx = 0; idx < array.length; idx += 1) {
      if (array[idx] > array[idx + 1]) {
        [array[idx], array[idx + 1]] = [array[idx + 1], array[idx]];
        swapped = true;
      }
    }
  } while (swapped === true);

  return array
}

// Optimized Version

function bubbleSort2(array) {
  let swapped;
  let length = array.length;

  do {
    swapped = false;
    for (let idx = 0; idx < length; idx += 1) {
      if (array[idx] > array[idx + 1]) {
        [array[idx], array[idx + 1]] = [array[idx + 1], array[idx]];
        swapped = true;
      }
    }
    length -= 1;
  } while (swapped === true);

  return array
}

// Recursive Solution (non-optimized)

function bubbleSort3(array) {
  let swapped = false;

  for (let idx = 0; idx < array.length; idx += 1) {
    if (array[idx] > array[idx + 1]) {
      [array[idx], array[idx + 1]] = [array[idx + 1], array[idx]];
      swapped = true;
    }
  }

  return swapped ? bubbleSort3(array) : array;
}

// const array1 = [5, 3];
// bubbleSort1(array1);
// console.log(array1);    // [3, 5]

// const array2 = [6, 2, 7, 1, 4];
// bubbleSort1(array2);
// console.log(array2);    // [1, 2, 4, 6, 7]

// const array3 = ['Sue', 'Pete', 'Alice', 'Tyler', 'Rachel', 'Kim', 'Bonnie'];
// bubbleSort1(array3);
// console.log(array3);    // ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]

// const array4 = [5, 3];
// bubbleSort2(array4);
// console.log(array4);    // [3, 5]

// const array5 = [6, 2, 7, 1, 4];
// bubbleSort2(array5);
// console.log(array5);    // [1, 2, 4, 6, 7]

// const array6 = ['Sue', 'Pete', 'Alice', 'Tyler', 'Rachel', 'Kim', 'Bonnie'];
// bubbleSort2(array6);
// console.log(array6);    // ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]

const array7 = [5, 3];
bubbleSort2(array7);
console.log(array7);    // [3, 5]

const array8 = [6, 2, 7, 1, 4];
bubbleSort2(array8);
console.log(array8);    // [1, 2, 4, 6, 7]

const array9 = ['Sue', 'Pete', 'Alice', 'Tyler', 'Rachel', 'Kim', 'Bonnie'];
bubbleSort2(array9);
console.log(array9);    // ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]
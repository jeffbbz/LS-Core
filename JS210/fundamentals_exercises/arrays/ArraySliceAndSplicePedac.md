The splice function changes the contents of an array by deleting existing elements and/or adding new elements. The function takes the following arguments: an array, a start index, a deleteCount, and zero or more elements to be added. The function removes deleteCount number of elements from the array, beginning at the start index. If any optional element arguments are provided, splice inserts them into the array beginning at the start index. The function returns a new array containing the deleted elements, or an empty array ([]) if no elements are deleted. splice mutates the original array.

- The values of `start` and `deleteCount` will always be integers greater than or equal to `0`.
-   If the value of `start` is greater than the length of the array, set it to equal the length.
-   If the value of `deleteCount` is greater than the number of elements from `start` up to the end of the array, set `deleteCount` to the difference between the array's length and `start`.
-   Takes optional arguments for elements to add to the array; denoted by the rest parameter `...args`. If no elements to add are provided, `splice` only removes elements from the array.

```js
splice([1, 2, 3], 1, 2);              // [2, 3]
splice([1, 2, 3], 1, 3);              // [2, 3]
splice([1, 2, 3], 1, 0);              // []
splice([1, 2, 3], 0, 1);              // [1]
splice([1, 2, 3], 1, 0, 'a');         // []

const arr2 = [1, 2, 3];
splice(arr2, 1, 1, 'two');             // [2]
arr2;                                  // [1, "two", 3]

const arr3 = [1, 2, 3];
splice(arr3, 1, 2, 'two', 'three');    // [2, 3]
arr3;                                  // [1, "two", "three"]

const arr4 = [1, 2, 3];
splice(arr4, 1, 0);                    // []
splice(arr4, 1, 0, 'a');               // []
arr4;                                  // [1, "a", 2, 3]

const arr5 = [1, 2, 3];
splice(arr5, 0, 0, 'a');               // []
arr5;                                  // ["a", 1, 2, 3]
```

### Goal

Re-create a version of the Array.splice built-in method. It should be able to 
delete and add elements from an array. The function should take 4 arguments:
an array, start index, delete count, and elements to be added. It should delete
delete count number of elements from the start index and optionally insert other
elements from the start index. Returns a new array of the deleted elements or an empty array
if no elements were deleted. The original array should also be mutated

### Rules
INPUT: array, integers, elements to delete
OUTPUT: array of deleted elements, mutated argument array
- start and delete count will be integers >= 0
- if start is greater than array.length re-assign it to the array.length
- if delete count is > start..end of array then delete count = array.length - start
- if no elements are added splice only removes

### Initial Thoughts
- check if start > array.length? If so re-assign to array.length
- check if delete count > array.length - start then re-assign to array.length - start
- declare a variable to an empty array
- iterate over the argument array
  - from index = start while start is less than delete count && ...args element have been added, increment start each iteration
    - remove the element at that index and add it to the empty array
    - if ...args then add the first element
  - return array of delete items
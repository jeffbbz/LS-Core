const myArray = ['a', 'b', 'c'];

console.log(myArray[0]);    // a
console.log(myArray[-1]);   // undefined

myArray[-1] = 'd';
myArray['e'] = 5;
myArray[3] = 'f';

console.log(myArray[-1]);  // d
console.log(myArray['e']); // 5
console.log(myArray);      // [ 'a', 'b', 'c', 'f', '-1': 'd', e: 5 ]

// Line 3 logs the array element at index 0 of the array, which is the string primitive 'a'. Line 4 logs undefined, because
// there -1 is not a valid index value for an array and there is no property of that name.
//
// However, line 10 will log the string d because online 6 we use bracket notation to add a non-element property to the array
// which is a name-value pair of `-1: 'd'`. Meanwhile line 11 will log 5 because we performed a similar action on line 7,
// wherein another non-element property `e: 5` was added to the array.
//
// Finally, line 12 logs the entire array with all its elements and properties. Here we see that the original first three
// elements are still there, followed by 'f' which was added at index 3 on line 8. If bracket notation is used with an index
// higher than the current last index, it creates a new element at the given index. Then the array has its non-element properties
// at the end `'-1': 'd', e: 5`
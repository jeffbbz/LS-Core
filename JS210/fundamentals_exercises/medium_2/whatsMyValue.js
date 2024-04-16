const array = ['Apples', 'Peaches', 'Grapes'];

array[3.4] = 'Oranges';
console.log(array.length); // 3
console.log(Object.keys(array).length); // 4
console.log(array)


array[-2] = 'Watermelon';
console.log(array.length); // 3
console.log(Object.keys(array).length); // 5
console.log(array)
/*

Lines 3 and 9 attempt to assign elements to non-positive integer indexes. When this is done we instead add name-value property pairs to the array instead. These are tracked by array.length as they are not considered array elements.

*/




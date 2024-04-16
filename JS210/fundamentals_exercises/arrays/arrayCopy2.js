// With Array.slice

let myArray = [1, 2, 3, 4];
const myOtherArray = myArray.slice()

myArray.pop();
console.log(myOtherArray);

myArray = [1, 2];
console.log(myOtherArray);

// With Array.concat

myArray = [1, 2, 3, 4];
const myOtherOtherArray = myArray.concat()

myArray.pop();
console.log(myOtherOtherArray);

myArray = [1, 2];
console.log(myOtherOtherArray);

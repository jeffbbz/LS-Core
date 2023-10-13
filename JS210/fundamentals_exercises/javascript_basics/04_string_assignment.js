let myName = 'Bob';
const saveName = myName;
myName = 'Alice';
console.log(myName, saveName);  // Alice Bob

// ------

const myName = 'Bob';
const saveName = myName;
myName.toUpperCase();
console.log(myName, saveName); // Bob Bob

// There are two reasons why we log the result that we do. First of all myName is a constant so it cannot be re-asssigned
// Additionally, toUpperCase() is a non-mutating method as strings are immutable and so this does not permantenly alter
// the value referenced by myName, nor is the return value of that function save to a variable to be logged.
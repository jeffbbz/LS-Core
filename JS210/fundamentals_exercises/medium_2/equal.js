const person1 = { name: 'Victor' };
const otherPerson1 = { name: 'Victor' };

console.log(person1 === otherPerson1);    // false -- expected: true

/*


Although these objects both look identical, and contain a name-value pair of the same name and value, they are difference objects and thus when compared with the strict equality operator will return false as it checks for object equivalence with objects.

We can change it to compare the values instead:

*/

const person2 = { name: 'Victor' };
const otherPerson2 = { name: 'Victor' };

console.log(person2.name === otherPerson2.name);    // true


/*

Or we can assign the other person variable to the same object reference as the person variable:

*/

const person3 = { name: 'Victor' };
const otherPerson3 = person3;

console.log(person3 === otherPerson3);    // true
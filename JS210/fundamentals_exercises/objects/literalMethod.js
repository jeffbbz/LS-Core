const person = {
  firstName() {
    return 'Victor';
  },
  lastName() {
    return 'Reyes';
  },
};

console.log(`${person.firstName} ${person.lastName}`);

// This code outputs:

// firstName() {
//   return 'Victor';
// } lastName() {
//   return 'Reyes';
// }

// This is because if we do not include the `()` at the end of the `firstName` and `lastName` method calls, we are merely using
// dot notation to return the value of the property names firstName and lastName from the person object which are the actual object method definitions.
// rather than invoking the functions to use the return value.
//
// If we want to invoke the functions to use the return value strings in our logged output, we need to be sure to include the () so that
// JS knows we are invoking a function:

console.log(person.firstName());                              // Victor
console.log(person.lastName());                               // Reyes
console.log(`${person.firstName()} ${person.lastName()}`);    // Victor Reyes
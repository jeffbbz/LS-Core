// var counter = 5;
// var rate = 3;
// console.log('The total value is ' + String(counter * rate)); // The total value is 15
//
// function counter(count) {
//   // ...
// }

// This will log `The total value is 15` because although we have a double declaration (both with function and var)
// and counter is initially assigned to the function defined on lines 5-7 during the creation phase, it will be re-assigned by
// line 1 during execution which is before we pass it to console.log on line 3.

// function counter(count) {
//   // ...
// }
//
// console.log('The total value is ' + String(counter * rate)); // The total value is NaN
// var counter = 5;
// var rate = 3;

// This time we will log 'The total value is NaN' which is the result of attempting to  use the
// * operator to multiply the variables rate and counter. We don't raise an exception because during
// the creation phase, we declare both variables, counter to the function and rate. However, the
// re-assignment of counter to 5 and the initialization of rate to 3 do not happen until the execution phase
// and not until after the console.log call. So we are passing the function counter itself * rate (which not having been
// initialized has a value of undefined. a function * undefined is not a valid multiplication problem
// and so returns NaN which is often the result of invalid number operations
//
// var counter = 5;
// var rate = 3;
//
// function counter(count) {
//   // ...
// }
//
// console.log('The total value is ' + String(counter * rate)); // The total value is 15

// Here we will log the same output as the first example: `The total value is 15`. Due to hoisting
// we set the counter variable to the function during the creation phase, but then during execution
// we re-assign it to 5. Thus when the console.log call is made `co

// let counter = 5;
// let rate = 3;
//
// function counter(count) {
//   // ...
// }
//
// console.log('The total value is ' + String(counter * rate));

// This time we will throw a SyntaxError exception (Identifier 'counter' has already been declared) because unlike var,
// variables declared with let cannot be declared multiple times. During creation phase, the interpreter will find the
// double declaration with let on line 42 and then the function on 45 and raise a SyntaxError before runtime on line 45.
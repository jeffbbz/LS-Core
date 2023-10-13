console.log(a); // undefined

var a = 1;

// This code will log `undefined`. Due to the hoisting rules for variables declared with
// the `var` keyword, the variable `a` will have been declared but not initialized to a value when
// it is passed to log for output and thus will output `undefined`.
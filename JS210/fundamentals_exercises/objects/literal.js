const myObject = {
  a: 'name',
  'b': 'test',
  123: 'c',
  1: 'd',
};

console.log(myObject[1]);   // d
console.log(myObject[a]);   // ReferenceError: a is not defined
console.log(myObject.a);    // name

// This code will throw a ReferenceError on line 9 because we are attempting to access a property name `a` but there is no
// property of that name (There is an `'a'` which would work).
//
// When using bracket notation to access object literal properties, the property name must be a string value.
// We see that on line 8 we use bracket notation with a number 1 but JS will implicitly coerce this to a string using `Number.toString()`
// method. However, with a variable name like we originally had on line 9, JS must be able to find the value held or referenced by the variable.
// We can however use the property name not as a string with dot notation (seen on line 10)
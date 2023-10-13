logValue();  // Hello, world!

function logValue() {
  console.log('Hello, world!');
}

// This code is able to function because JavaScript hoists function declarations to the top
// of the scope they were declared in meaning that we are able to invoke functions before declaration
// at runtime.

// Further Exploration

var logValue = 'foo';

function logValue() {
  console.log('Hello, world!');
}

console.log(typeof logValue); // string

// Hoisting would move the function declaration to the top, followed by the var declaration
// followed by assigning 'foo' to logValue. Thus although logValue is intially a function,
// it is re-assigned to reference the string 'foo' and thus our logged output.
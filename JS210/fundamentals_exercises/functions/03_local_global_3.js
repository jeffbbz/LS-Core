var myVar = 'This is global';

function someFunction() {
  myVar = 'This is local';
}

someFunction();
console.log(myVar);  // This is local


// This time the `someFunction` function does not declare its own local variable but rather
// re-assigns the global `myVar` variable declared on line 1. Thus when we pass that variable
// to `console.log` on line 8, we log `This is local`.
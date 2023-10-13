var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
}

someFunction();
console.log(myVar); // This is global

// This code logs `'This is global'` because when a variable is declared in the top scope
// with `var` it has global scope but when it is declared inside a function it is scoped only
// to that function. Thus when the `someFunction` function is invoked we do not re-assign the
// value of `myVar` from the top scope but rather declare a new variable local to the function.
// But our call to `console.log` is back in the top scope and the only variable named `myVar` in
// scope at the time of the method call is the global one declared on line 1.
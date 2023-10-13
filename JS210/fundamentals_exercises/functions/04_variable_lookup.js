var myVar = 'This is global';

function someFunction() {
  console.log(myVar);    // This is global
}

someFunction();

// Similar to the last problem, the `someFunction` function has access to the variable declared
// on line 1 because it is globally scoped. Thus we are able to pass it to the `log` method
// call on line 4 to log its referenced string value. If there were another variable of that
// same name within the local function scope, that variable would be used instead. Typically
// if an available variable was not found in the top scope, a ReferenceError would be raised.
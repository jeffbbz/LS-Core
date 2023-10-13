var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
  console.log(myVar);     // This is local
}

someFunction();

// This time our variables are scoped the same as in the last problem but the log
// method call is inside the function putting it in scope with the function local myVar variable
// and its referenced value. Technically it could access both of the myVar variables but the
// function scoped one shadows the top level global one and thus only the local one can be accessed
// by the log method call.
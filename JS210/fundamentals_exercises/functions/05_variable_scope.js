function someFunction() {
  myVar = 'This is global';
}

someFunction();
console.log(myVar); // This is global

// When a variable is assigned a value without declaration, it is bound to the global object
// as a property making it similar to a globally declared variable. Thus although `myVar`
// was assigned a value inside a function, we can still access it from the top
// scope to pass to console.log on line 6.
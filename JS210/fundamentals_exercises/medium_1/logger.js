function debugIt() {
  const status = 'debugging';
  function logger() {
    console.log(status);
  }

  logger();
}

debugIt(); // debugging

// Variables declared with const keyword within a function have block scope. As the logger function is in scope with the status variable
// when it is invoked on line 7 of the function, it has access to the string value held by status and is thus able to pass it to console
// log for output.
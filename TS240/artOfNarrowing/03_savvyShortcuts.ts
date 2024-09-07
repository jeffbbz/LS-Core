function myFunc(val: string | undefined) {
  val && val !== "" && console.log("Input is defined and not empty");
}

myFunc("hat"); // Input is defined and not empty
myFunc(undefined); //

// We can use the short-circuiting behavior of logical && operator as a type guard.
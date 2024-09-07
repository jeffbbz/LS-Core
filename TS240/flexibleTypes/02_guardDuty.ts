function printId(id: number | string) {
  if (typeof id === 'number') {
    console.log("Your ID is a number");
  } else {
    console.log("Your ID is a string");
  }
}

printId(101);
printId("202")

// Type guards in TS allow for type narrowing in order to maintain type safety.
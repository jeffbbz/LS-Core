function createGreeter(name) {
  return {
    name,
    morning: 'Good Morning',
    afternoon: 'Good Afternoon',
    evening: 'Good Evening',
    greet(timeOfDay) {
      let msg = '';
      switch (timeOfDay) {
        case 'morning':
          msg += `${this.morning} ${this.name}`;
          break;
        case 'afternoon':
          msg += `${this.afternoon} ${this.name}`;
          break;
        case 'evening':
          msg += `${this.evening} ${this.name}`;
          break;
      }

      console.log(msg);
    },
  };
}

// Expected output:

const helloVictor = createGreeter('Victor');
helloVictor.greet('morning');
// Good Morning Victor

// However, it instead results in an error. What is the problem with the code? Why isn't it producing the expected results?

// The reason we raise a reference error rather than the expected output is because
// We need to access the properties of the object using the `this` keyword. As we are not
// the JS engine searches the `greet` method for local variables of the given property names (morning, afternoon, etc...)
// As there are no local variables of these names, nor any accessible variables of these names in an outerscope, the error is raised

// name is however accessible without `this` as it is a variable local to the outer `createGreeter` function and thus accessible to the inner `greet` function
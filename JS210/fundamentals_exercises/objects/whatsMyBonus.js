function calculateBonus() {
  return arguments[1] ? arguments[0] / 2 : 0;
}

console.log(calculateBonus(2800, true));               // 1400
console.log(calculateBonus(1000, false));              // 0
console.log(calculateBonus(50000, true));              // 25000

// Here we use a ternary operator with the now depreciated `arguments` object which is an array-like local variable
// available in functions that contains all the arguments passed to a function. Although the arguments object is not
// an array, its contained arguments can be accessed array style with bracket notation and it has a length property.
// So here our arguments object has two elements the salary number and the boolean. The ternary operator checks if
// the argument at index 1 (the second, boolean argument) is truthy (evaluates to the true). If so, then we return
// the argument at index 0 (the first, number argument) divided by 2. If not, we return 0.
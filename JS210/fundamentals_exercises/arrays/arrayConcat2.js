function concat(...args) {
  let concatted = [];

  args.forEach( function(arg) {
    if (Array.isArray(arg)) {
      for (let index = 0; index < arg.length; index += 1) {
        concatted.push(arg[index]);
      }
    } else {
      concatted.push(arg);
    }
  })

  return concatted;
}

// Or super Short with flat(Infinity)

// const concat = (...args) => args.flat(Infinity);

console.log(concat([1, 2, 3], [4, 5, 6], [7, 8, 9]));    // [1, 2, 3, 4, 5, 6, 7, 8, 9]
console.log(concat([1, 2], 'a', ['one', 'two']));        // [1, 2, "a", "one", "two"]
console.log(concat([1, 2], ['three'], 4));               // [1, 2, "three", 4]


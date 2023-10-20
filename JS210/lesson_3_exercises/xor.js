function isXor(arg1, arg2) {
  if (arg1) {
    return arg2 ? false : true;
  } else {
    return arg2 ? true : false;
  }
}

console.log(isXor(false, true));     // true
console.log(isXor(true, false));     // true
console.log(isXor(false, false));    // false
console.log(isXor(true, true));      // false

console.log(isXor(false, 3));        // true
console.log(isXor('a', undefined));  // true
console.log(isXor(null, ''));        // false
console.log(isXor('2', 23));         // false

// refactor but maybe less readable?

function isXor(arg1, arg2) {
  if (arg1) {
    return !arg2
  } else {
    return !!arg2
  }
}
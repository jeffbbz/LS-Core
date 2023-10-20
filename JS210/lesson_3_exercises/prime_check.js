function isPrime(number) {
  if (number === 0 || number === 1) {
    return false;
  }

  for ( let divisor = 2; divisor < number; divisor += 1 ) {
    if (number % divisor === 0) {
      return false;
    }
  }
  return true;
}

console.log(isPrime(1));   // false
console.log(isPrime(2));   // true
console.log(isPrime(3));   // true
console.log(isPrime(43));  // true
console.log(isPrime(55));  // false
console.log(isPrime(0));   // false

// Further Exploration: Checking only odds because evens greater than two are never prime

function isPrime(number) {
  if (number <= 1 || (number !== 2 && number % 2 === 0)) {
    return false;
  }

  for ( let divisor = 3; divisor < number; divisor += 2 ) {
    if (number % divisor === 0) {
      return false;
    }
  }
  return true;
}

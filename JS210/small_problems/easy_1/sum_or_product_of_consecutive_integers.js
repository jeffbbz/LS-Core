function computeSum(number) {
  let sum = 0;
  for (let counter = 1; counter <= number; counter += 1) {
    sum += counter;
  }
  return sum;
}

function computeProduct(number) {
  let product = 1;
  for (let counter = 1; counter <= number; counter += 1) {
    product *= counter;
  }
  return product;
}

let rlSync = require('readline-sync');
let integer = parseInt(rlSync.question('Please enter an integer greater than 0: '), 10);
let choice = rlSync.question('Enter "s" to compute the sum, or "p" to compute the product. ');
let result;
let error = false;

if (choice === 's' && integer < 0) {
  choice = 'sum';
  result = computeSum(integer);
} else if (choice === 'p' && integer < 0) {
  choice = 'product';
  result = computeProduct(integer);
} else {
  error = true
  console.log('That operation does not exist!')
}

if (!error) {
  console.log(`The ${choice} of the integers between 1 and ${integer} is ${result}.`)
}

// Further Exploration

function computeSum(numbers) {
  return numbers.reduce((accum, value) => accum + value, 0);
}

function computeProduct(numbers) {
  return numbers.reduce((accum, value) => accum * value, 1);
}

let rlSync = require('readline-sync');
let integer1 = parseInt(rlSync.question('Please enter an integer greater than 0: '), 10);
let integer2 = parseInt(rlSync.question('Please enter another integer greater than 0: '), 10);
let integer3 = parseInt(rlSync.question('Please enter one last integer greater than 0: '), 10);
let integers = [integer1, integer2, integer3];
let choice = rlSync.question('Enter "s" to compute the sum, or "p" to compute the product. ');
let result;
let error = false;

if (choice === 's' && integers.every(integer => integer > 0)) {
  choice = 'sum';
  result = computeSum(integers);
} else if (choice === 'p' && integers.every(integer => integer > 0)) {
  choice = 'product';
  result = computeProduct(integers);
} else {
  error = true
  console.log('That operation does not exist!')
}

if (!error) {
  console.log(`The ${choice} of the integers ${integer1}, ${integer2}, and ${integer3} is ${result}.`)
}
// let first = Number(prompt('Enter the 1st number: '));
// let second = Number(prompt('Enter the 2nd number: '));
// let third = Number(prompt('Enter the 3rd number: '));
// let fourth = Number(prompt('Enter the 4th number: '));
// let fifth = Number(prompt('Enter the 5th number: '));
// let last = Number(prompt('Enter the last number: '));
// let numbers = [first, second, third, fourth, fifth];
// let status = 'does not appear';
//
// if (numbers.includes(last)) {
//   status = 'appears';
// }
//
// console.log(`The number ${last} ${status} in [${numbers.join(', ')}].`)

// Further Exploration

let first = Number(prompt('Enter the 1st number: '));
let second = Number(prompt('Enter the 2nd number: '));
let third = Number(prompt('Enter the 3rd number: '));
let fourth = Number(prompt('Enter the 4th number: '));
let fifth = Number(prompt('Enter the 5th number: '));
let last = Number(prompt('Enter the last number: '));
let numbers = [first, second, third, fourth, fifth];
let status = 'does not appear';

if (numbers.some(number => number > (last))) {
  status = 'appears';
}

console.log(`A number greater than ${last} ${status} in [${numbers.join(', ')}].`)
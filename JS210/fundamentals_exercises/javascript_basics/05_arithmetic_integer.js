let firstNumber = Number(prompt('What is the first number?'));
let secondNumber = Number(prompt('What is the second number?'));
let add = firstNumber + secondNumber;
let subtract = firstNumber - secondNumber;
let multiply = firstNumber * secondNumber;
let divide = firstNumber / secondNumber;
let remainder = firstNumber % secondNumber;
let square = firstNumber ** secondNumber;

let operations = [add, subtract, multiply, divide, remainder, square];
let operationSigns = ['**', '%', '/', '*', '-', '+'];

operations.forEach(operation => console.log(`${firstNumber} ${operationSigns.pop()} ${secondNumber} = ${operation}`));
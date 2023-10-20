let rlSync = require('readline-sync');
let bill = parseFloat(rlSync.question('What is the bill? '), 10);
let percent = parseFloat(rlSync.question('What is the tip percentage? '), 10) / 100;
let tip = bill * percent;
let total = bill + tip;

console.log(`The tip is $${tip.toFixed(2)}`)
console.log(`The total is $${total.toFixed(2)}`)
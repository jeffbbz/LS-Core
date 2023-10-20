const SQMETER_TO_SQFEET = 10.7639;
let rlSync = require('readline-sync');
let length = rlSync.question('Enter the length of the room in meters: ');
let width = rlSync.question('Enter the width of the room in meters: ');
let smArea = parseInt(length, 10) * parseInt(width, 10);
let sfArea = smArea * SQMETER_TO_SQFEET;

console.log(`The area of the room is ${smArea.toFixed(2)} square meters (${sfArea.toFixed(2)} square feet).`)

// Further Exploration

const SQMETER_TO_SQFEET = 10.7639;
let rlSync = require('readline-sync');
let inputUnit = rlSync.question('Choose a Unit: meters or feet ')
let length = rlSync.question(`Enter the length of the room in ${inputUnit}: `);
let width = rlSync.question(`Enter the width of the room in ${inputUnit}: `);

if (inputUnit === 'meters') {
  let smArea = parseInt(length, 10) * parseInt(width, 10);
  let sfArea = smArea * SQMETER_TO_SQFEET;
  console.log(`The area of the room is ${smArea.toFixed(2)} square meters (${sfArea.toFixed(2)} square feet).`);
} else {
  let sfArea = parseInt(length, 10) * parseInt(width, 10);
  let smArea= sfArea / SQMETER_TO_SQFEET;
  console.log(`The area of the room is ${sfArea.toFixed(2)} square feet (${smArea.toFixed(2)} square meters).`);
}




// Further Exploration


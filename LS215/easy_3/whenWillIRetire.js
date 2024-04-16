let age = Number(prompt('What is your age? '));
let retirementAge = Number(prompt('At what age would you like to retire? '));
let currentYear = new Date().getFullYear();
let ageGap = retirementAge - age;

console.log(`It's ${currentYear}. You will retire in ${currentYear + ageGap}.`);
console.log(`You have only ${ageGap} years of work to go!.`);

// Further Exploration

// > Date()
// 'Thu Dec 07 2023 11:14:53 GMT-0500 (Eastern Standard Time)'
// This return a string with the current date and time that
// can be manipulated with String class methods.
//
// > new Date()
// 2023-12-07T16:14:58.547Z
// This returns a new date object with the current date and time that
// can be manipulated with Date class methods.
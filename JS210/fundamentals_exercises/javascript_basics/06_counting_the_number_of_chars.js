let input = prompt('Please enter a phrase:');
console.log(`There are ${input.length} characters in '${input}'`);

// -------

let input = prompt('Please enter a phrase:');
console.log(`There are ${input.replaceAll(' ', '').length} non-whitespace characters in '${input}'`);

// -------

let input = prompt('Please enter a phrase:');
console.log(`There are ${input.replaceAll(/[^a-z]/gi, '').length} alphabet characters in '${input}'`);
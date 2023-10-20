// function logMultiples(number) {
//   for (let counter = 100; counter >= number; counter -= 1) {
//     if (counter % number === 0 && counter % 2 === 1) console.log(counter);
//   }
// }
//
// logMultiples(17);
// logMultiples(21);

// Further Exploration

function logMultiples(number) {
  let largestMult = Math.floor(100 / number) * number
  for (let counter = largestMult; counter > 0; counter -= number) {
    if (counter % 2 === 1) console.log(counter);
  }
}

logMultiples(17);
logMultiples(21);
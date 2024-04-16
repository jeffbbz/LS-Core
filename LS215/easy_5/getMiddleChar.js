
function centerOf(string) {
  let idx = Math.floor(string.length / 2);
  if (string.length % 2 === 0) {
    return string[idx - 1] + string[idx];
  } else {
    return string[idx];
  }
}

console.log(centerOf('I Love JavaScript')); // "a"
console.log(centerOf('Launch School'));     // " "
console.log(centerOf('Launch'));            // "un"
console.log(centerOf('Launchschool'));      // "hs"
console.log(centerOf('x'));                 // "x"
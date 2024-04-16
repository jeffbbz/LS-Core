// function teddyAge(min, max) {
//   let age = Math.floor(Math.random() * (max - min + 1) + min);
//   console.log(`Teddy is ${age} years old!`);
// }
//
// teddyAge(2, 20);

// Further Exploration: What if the user inadvertently gave the inputs in reverse order (i.e., the value passed to min was greater than max)?

function teddyAge(min, max) {
  [min, max] = min < max ? [min, max] : [max, min];
  let age = Math.floor(Math.random() * (max - min + 1) + min);
  console.log(`Teddy is ${age} years old!`);
}

teddyAge(2, 20);
teddyAge(20, 2);

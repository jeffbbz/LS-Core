function reverse(inputForReversal) {
  let reversed = [];
  let reversedIndex = 0;
  if (Array.isArray(inputForReversal)) {
    for (let index = inputForReversal.length - 1; index >= 0; index -= 1) {
      reversed[reversedIndex] = inputForReversal[index]
      reversedIndex += 1;
    }
  } else {
    reversed = ''
    for (let index = inputForReversal.length - 1; index >= 0; index -= 1) {
      reversed += inputForReversal[index]
    }
  }
  
  return reversed;
}

console.log(reverse('Hello'));           // "olleH"
console.log(reverse('a'));               // "a"
console.log(reverse([1, 2, 3, 4]));      // [4, 3, 2, 1]
console.log(reverse([]));                // []

const array = [1, 2, 3];
console.log(reverse(array));             // [3, 2, 1]
console.log(array);                      // [1, 2, 3]
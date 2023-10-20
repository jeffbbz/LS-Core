function toLowerCase(string) {
  let numbers = [];
  for (let index = 0; index < string.length; index += 1) {
    let ascii = string.charCodeAt(index);
    if (ascii >= 65 && ascii <= 90) {
      numbers.push(ascii + 32);
    } else {
      numbers.push(ascii);
    }
  }

  return numbers.map((number) => String.fromCharCode(number)).join('');
}

console.log(toLowerCase('ALPHABET'));    // "alphabet"
console.log(toLowerCase('123'));         // "123"
console.log(toLowerCase('abcDEF'));      // "abcdef"

// Without an array, just converting directly and adding to a new string
function toLowerCase(string) {
  let lowerCase = '';
  for (let index = 0; index < string.length; index += 1) {
    let ascii = string.charCodeAt(index)
    if (ascii >= 65 && ascii <= 90) {
      lowercase += String.fromCharCode(ascii + 32);
    } else {
      lowercase += String.fromCharCode(ascii);
    }
  }

  return lowerCase;
}
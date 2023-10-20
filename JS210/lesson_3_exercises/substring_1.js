function substr(string, start, length) {
  if (start < 0) {
    start = string.length + start;
 }

 let subString = ''
  for (; (subString.length < length && start < string.length); start += 1) {
      subString += string[start];
  }

  return subString;
}

let string = 'hello world';

console.log(substr(string, 2, 4));      // "llo "
console.log(substr(string, -3, 2));     // "rl"
console.log(substr(string, 8, 20));     // "rld"
console.log(substr(string, 0, -20));    // ""
console.log(substr(string, 0, 0));      // ""
function substring(string, start, end) {
  if (!Number.isInteger(start) || start < 0) {
    start = 0;
  }

  if (end === undefined || end > string.length) {
    end = string.length;
  }

  if (!Number.isInteger(end) || end < 0) {
    end = 0;
  }

  if (start > string.length) {
    start = string.length;
  }

  if (start === end) {
    return '';
  }

  if (start > end) {
    [start, end] = [end, start];
  }

  let subString = '';
  for (; start < end; start += 1) {
    subString += string[start];
  }

  return subString;
}

let string = 'hello world';

console.log(substring(string, 2, 4));    // "ll"
console.log(substring(string, 4, 2));    // "ll"
console.log(substring(string, 0, -1));   // ""
console.log(substring(string, 2));       // "llo world"
console.log(substring(string, 'a'));     // "hello world"
console.log(substring(string, 8, 20));   // "rld"
function splitString(string, delimiter) {
  if (delimiter !== '' && !delimiter) {
    console.log("ERROR: No delimiter");
    return;
  }
  let split = ''
  for (let index = 0; index < string.length; index += 1) {
    if (delimiter === '') {
      split += string[index];
      if (index !== string.length - 1) {
        split += '\n'
      }
    } else if (string[index] === delimiter) {
      if (index !== string.length - 1) {
        split += '\n'
      }
    } else {
      split += string[index];
    }
  }
  console.log(split);
}

splitString('abc,123,hello world', ',');
// logs:
// abc
// 123
// hello world

splitString('hello');
// logs:
// ERROR: No delimiter

splitString('hello', '');
// logs:
// h
// e
// l
// l
// o

splitString('hello', ';');
// logs:
// hello

splitString(';hello;', ';');
// logs:
//  (this is a blank line)
// hello
const ASCII_OFFSET = 13;
const isUpperAlphaFront = asciiNum => (asciiNum >= 'A'.charCodeAt()) && (asciiNum <= 'M'.charCodeAt());
const isLowerAlphaFront = asciiNum => (asciiNum >= 'a'.charCodeAt()) && (asciiNum <= 'm'.charCodeAt());

function calcRotation(asciiNum) {
  if (isUpperAlphaFront(asciiNum) || isLowerAlphaFront(asciiNum)) {
    return String.fromCharCode(asciiNum + ASCII_OFFSET);
  } else {
    return String.fromCharCode(asciiNum - ASCII_OFFSET);
  }
}

function rot13(string) {
  let rotString = '';
  for (let index = 0; index < string.length; index += 1) {
    if (string[index].match(/[a-z]/i)) {
      let asciiNum = string.charCodeAt(index);
      rotString += calcRotation(asciiNum);
    } else {
      rotString += string[index];
    }
  }

 return rotString;
}

console.log(rot13('Teachers open the door, but you must enter by yourself.'));
// Grnpuref bcra gur qbbe, ohg lbh zhfg ragre ol lbhefrys.

console.log(rot13(rot13('Teachers open the door, but you must enter by yourself.')));
// Teachers open the door, but you must enter by yourself.

console.log(rot13('ABC'));
// NOP

console.log(rot13('[Teachers] open the door, bu_t you must enter by yourself.'));
// [Grnpuref] bcra gur qbbe, oh_g lbh zhfg ragre ol lbhefrys.
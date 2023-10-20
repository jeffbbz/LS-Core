// tersely with two ternary statements

function shortLongShort(string1, string2) {
  let short = string1.length < string2.length ? string1 : string2;
  return short === string1 ? short + string2 + short : short + string1 + short;
}

console.log(shortLongShort('abc', 'defgh'));    // "abcdefghabc"
console.log(shortLongShort('abcde', 'fgh'));    // "fghabcdefgh"
console.log(shortLongShort('', 'xyz'));         // "xyz"

// less terse with destructuring assignment

function shortLongShort(string1, string2) {
  let short;
  let long;
  if (string1.length > string2.length) {
    [long, short] = [string1, string2];
  } else {
    [long, short] = [string2, string1];
  }
  return short + long + short;
}

// better without unnecessary variable declaration

function shortLongShort(string1, string2) {
  if (string1.length > string2.length) {
    return string2 + string1 + string2;
  } else {
    return string1 + string2 + string1;
  }
}

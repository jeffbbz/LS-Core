// function leadingSubstrings(string) {
//   let substrings = [];
//   for (let end = 1; end <= string.length; end += 1) {
//     substrings.push(string.substring(0, end));
//   }
//
//   return substrings;
// }
//
// console.log(leadingSubstrings('abc'));      // ["a", "ab", "abc"]
// console.log(leadingSubstrings('a'));        // ["a"]
// console.log(leadingSubstrings('xyzzy'));    // ["x", "xy", "xyz", "xyzz", "xyzzy"]

function leadingSubstrings(string) {
 return string.split('')
              .map((_, idx) => string.substring(0, idx + 1));
}

console.log(leadingSubstrings('abc'));      // ["a", "ab", "abc"]
console.log(leadingSubstrings('a'));        // ["a"]
console.log(leadingSubstrings('xyzzy'));    // ["x", "xy", "xyz", "xyzz", "xyzzy"]


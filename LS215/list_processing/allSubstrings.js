// Nested for Loops, Single function
//
// function substrings(string) {
//   let result = [];
//
//   for (let start = 0; start < string.length; start += 1) {
//     for (let end = 1 + start; end <= string.length; end += 1) {
//       result.push(string.substring(start, end))
//     }
//   }
//
//   return result;
// }

// With list processing methods and a helper function
function substrings(string) {
  return string.split('').flatMap((_, idx) => {
    return [string.slice(idx)].flatMap(chars => leadingSubstrings(chars))
  });
}

function leadingSubstrings(string) {
  return string.split('')
               .map((_, idx) => string.substring(0, idx + 1));
}

// // For loop with helpter function
// function leadingSubstrings(string, start) {
//   let substrings = [];
//   for (let end = 1 + start; end <= string.length; end += 1) {
//     substrings.push(string.substring(start, end));
//   }
//
//   return substrings;
// }
//
// function substrings(string) {
//   let substringsSets = [];
//   for (let start = 0; start <= string.length - 1; start += 1) {
//     substringsSets.push(leadingSubstrings(string, start));
//   }
//
//   return substringsSets.flat()
// }



console.log(substrings('abcde'));

// returns
// [ "a", "ab", "abc", "abcd", "abcde",
//   "b", "bc", "bcd", "bcde",
//   "c", "cd", "cde",
//   "d", "de",
//   "e" ]



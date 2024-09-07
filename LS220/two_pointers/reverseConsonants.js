/*

Where does my start pointer begin?

- index 0

Where does my end pointer begin?

- end of string (string.length - 1)

Under which condition do I move the start pointer?

- increment when char is not a consonant?

Under which condition do I move the end pointer?

- increment when char is not a consonant?

Under which condition do I cease the iteration?

- when the pointers meet?


If both pointers point to a consonant then swap

*/

function isNotConsonant(char) {
  return "aeiouAEIOU".includes(char);
}

function reverseConsonants(string) {
  if (string.length <= 1) return string;
  let chars = string.split("")
  let start = 0;
  let end = string.length - 1;

  while (start <= end) {
    if (isNotConsonant(chars[start])) {
      start += 1;
      continue
    }

    if (isNotConsonant(chars[end])) {
      end -= 1;
      continue
    }

    [chars[start], chars[end]] = [chars[end], chars[start]]
    start += 1;
    end -= 1;
  }

  return chars.join('');
}

console.log(reverseConsonants("") === "");
console.log(reverseConsonants("s") === "s");
console.log(reverseConsonants("hello") === "lelho");
console.log(reverseConsonants("leetcode") === "deectole");
console.log(reverseConsonants("example") === "elapmxe");
console.log(reverseConsonants("Consonants") === "sotnonasnC");

// All test cases should log true
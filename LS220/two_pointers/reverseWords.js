
function reverseWords(words) {
  return words.split(" ")
              .map(reverseString)
              .join(' ');
}

function reverseString(string) {
  let start = 0;
  let end = string.length - 1;
  let stringArr = string.split('');

  while (start < end) {
    [stringArr[start], stringArr[end]] = [stringArr[end], stringArr[start]];
    start += 1;
    end -= 1;
  }

  return stringArr.join('');
}

console.log(reverseWords("Hello World") === "olleH dlroW");
console.log(reverseWords("JavaScript is fun") === "tpircSavaJ si nuf");
console.log(reverseWords("Coding in the sun") === "gnidoC ni eht nus");
console.log(reverseWords("Launch School") === "hcnuaL loohcS");
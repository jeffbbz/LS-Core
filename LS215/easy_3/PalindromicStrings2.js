function isRealPalindrome(string) {
  let comparisonChars = string.replaceAll(/\W/g, '').toUpperCase();
  let reversed = comparisonChars.split('').reverse().join('');
  return comparisonChars === reversed;
}

console.log(isRealPalindrome('madam'));               // true
console.log(isRealPalindrome('Madam'));               // true (case does not matter)
console.log(isRealPalindrome("Madam, I'm Adam"));     // true (only alphanumerics matter)
console.log(isRealPalindrome('356653'));              // true
console.log(isRealPalindrome('356a653'));             // true
console.log(isRealPalindrome('123ab321'));            // false
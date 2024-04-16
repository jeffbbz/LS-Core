function staggeredCase(string) {
  let upper = true;

  return string.split('')
    .map(char => {
      if (/[A-Z]/i.test(char) && upper) {
        upper = false;
        return char.toUpperCase();
      } else if (/[A-Z]/i.test(char) && !upper) {
        upper = true;
        return char.toLowerCase();
      } else {
        return char;
      }
    })
    .join('');
}

console.log(staggeredCase('I Love Launch School!'));        // "I lOvE lAuNcH sChOoL!"
console.log(staggeredCase('ALL CAPS'));                     // "AlL cApS"
console.log(staggeredCase('ignore 77 the 444 numbers'));    // "IgNoRe 77 ThE 444 nUmBeRs"
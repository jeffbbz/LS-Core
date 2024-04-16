
function doubleConsonants(string) {
 let stringArr = string.split('')
 let doubled = stringArr.map(char => {
   if (/[bcdfghjklmnpqrstvwxyz]/i.test(char)) {
     return char + char;
   } else {
     return char;
   }
 });

 return doubled.join('');
}

console.log(doubleConsonants('String'));          // "SSttrrinngg"
console.log(doubleConsonants('Hello-World!'));    // "HHellllo-WWorrlldd!"
console.log(doubleConsonants('July 4th'));        // "JJullyy 4tthh"
console.log(doubleConsonants(''));                // ""
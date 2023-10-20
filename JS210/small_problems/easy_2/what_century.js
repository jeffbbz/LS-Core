const oneButNotElevenEnd = string => string.match(/(?<!1)1$/) !== null;
const twoButNotTwelveEnd = string => string.match(/(?<!1)2$/) !== null;
const threeButNotThirteenEnd = string => string.match(/(?<!1)3$/) !== null;

function centuryEnding(century) {
  let stringCentury = String(century);

  if (oneButNotElevenEnd(stringCentury)) {
    stringCentury += 'st';
  } else if (twoButNotTwelveEnd(stringCentury)) {
    stringCentury += 'nd';
  } else if (threeButNotThirteenEnd(stringCentury)) {
    stringCentury += 'nd';
  } else {
    stringCentury += 'th';
  }

  return stringCentury;
}

function century(year) {
  let centuryNum;

  if (year % 100 === 0) {
     centuryNum = Math.floor(year / 100);
  } else {
     centuryNum = Math.floor(year / 100 + 1);
  }

  return centuryEnding(centuryNum);
}

console.log(century(2000));        // "20th"
console.log(century(2001));        // "21st"
console.log(century(1965));        // "20th"
console.log(century(256));         // "3rd"
console.log(century(5));           // "1st"
console.log(century(10103));       // "102nd"
console.log(century(1052));        // "11th"
console.log(century(1127));        // "12th"
console.log(century(11201));       // "113th"
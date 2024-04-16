const DEGREE_SYMBOL = '°';
const MINS_PER_DEGREE = 60;
const SECS_PER_MIN = 60;
const SECS_PER_DEGREE = SECS_PER_MIN * MINS_PER_DEGREE;

function dms(degreeFloat) {
  let degreeInt = Math.floor(degreeFloat);
  let mins = Math.floor((degreeFloat - degreeInt) * MINS_PER_DEGREE);
  let secs = Math.floor((degreeFloat - degreeInt - (mins / MINS_PER_DEGREE)) * SECS_PER_DEGREE);

  return `${degreeInt + DEGREE_SYMBOL}` + properZeros(mins) + "'" + properZeros(secs) + '"'
}

function properZeros(number) {
  let numString = String(number);
  if (numString.length === 1) {
    return '0' + numString;
  } else {
    return numString;
  }
}

console.log(dms(30));           // 30°00'00"
console.log(dms(76.73));        // 76°43'48"
console.log(dms(254.6));        // 254°35'59"
console.log(dms(93.034773));    // 93°02'05"
console.log(dms(0));            // 0°00'00"
console.log(dms(360));          // 360°00'00" or 0°00'00"

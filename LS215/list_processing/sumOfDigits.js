
function sum(number) {
  return String(number).split('')
                       .map(Number)
                       .reduce((sum, num) => sum + num);
}


console.log(sum(23));           // 5
console.log(sum(496));          // 19
console.log(sum(123456789));    // 45


function sum2(number) {
  return [...String(number)].map(Number)
    .reduce((sum, num) => sum + num);
}

console.log(sum2(23));           // 5
console.log(sum2(496));          // 19
console.log(sum2(123456789));    // 45
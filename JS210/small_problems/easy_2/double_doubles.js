function isDoubled(number) {
  let numString = String(number);
  let front = numString.slice(0, numString.length / 2);
  let back = numString.slice(numString.length / 2, numString.length);
  return front === back;
}

function twice(number) {
  if (isDoubled(number)) {
    return number;
  } else {
    return number * 2;
  }
}

console.log(twice(37));          // 74
console.log(twice(44));          // 44
console.log(twice(334433));      // 668866
console.log(twice(444));         // 888
console.log(twice(107));         // 214
console.log(twice(103103));      // 103103
console.log(twice(3333));        // 3333
console.log(twice(7676));        // 7676
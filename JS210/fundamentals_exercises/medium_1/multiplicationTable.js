function padLeft(number) {
  const stringNumber = String(number);
  switch (stringNumber.length) {
    case 1:  return `  ${stringNumber}`;
    case 2:  return ` ${stringNumber}`;
    default: return stringNumber;
  }
}

for (let i = 1; i <= 10; i += 1) {
  let row = '';
  for (let j = 1; j <= 10; j += 1) {
    row += `${padLeft(i * j)} `;
  }

  console.log(row);
}

// 1   2   3   4   5   6   7   8   9  10
// 2   4   6   8  10  12  14  16  18  20
// 3   6   9  12  15  18  21  24  27  30
// 4   8  12  16  20  24  28  32  36  40
// 5  10  15  20  25  30  35  40  45  50
// 6  12  18  24  30  36  42  48  54  60
// 7  14  21  28  35  42  49  56  63  70
// 8  16  24  32  40  48  56  64  72  80
// 9  18  27  36  45  54  63  72  81  90
// 10  20  30  40  50  60  70  80  90 100

// No this does not produce the expected result because the for loop on line 10 should loop until i is <= 10 or else our table will exclude
// the tens row from the logged output. We see that the innner for loop on line 12 has the correct condition which means that our horizontal row
// will be the proper size from 1-10 but the vertical row will stop at 9.
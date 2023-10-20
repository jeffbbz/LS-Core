function isPrime(number) {
  if (number === 0 || number === 1) {
    return false;
  }

  for ( let divisor = 2; divisor < number; divisor += 1 ) {
    if (number % divisor === 0) {
      return false;
    }
  }
  return true;
}

function checkGoldbach(number) {
  if (number < 4 || number % 2 !== 0) {
    console.log(null);
    return;
  }

  let pairs = []

  for (let first = 2; first < number; first += 1) {
    let second = number - first;
    let nums = [first, second];

    if ((!pairs.flat().includes(first)) && ((nums.every((num) => isPrime(num))))) {
      pairs.push(nums);
    }
  }
  pairs.forEach((pair) => console.log(pair[0], pair[1]))
}

checkGoldbach(3);
// logs: null

checkGoldbach(4);
// logs: 2 2

checkGoldbach(12);
// logs: 5 7

checkGoldbach(100);
// logs:
// 3 97
// 11 89
// 17 83
// 29 71
// 41 59
// 47 53
function logOdds() {
  for (let number = 1; number <= 99; number += 2) {
    console.log(number);
  }
}

logOdds();

// Further Exploration

function logOdds2(limit) {
  let number = 1;
  while (number <= limit) {
    console.log(number);
    number += 2;
  }
}

logOdds2(70);

// Even Further!

function logOdds3(limit) {
  let array = Array(limit).fill().map((_,index) => index + 1);
  array.forEach(number=> { if (number % 2 !== 0) console.log(number) });
}

logOdds3(70);
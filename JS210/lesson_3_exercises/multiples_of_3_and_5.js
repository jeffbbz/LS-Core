function multiplesOfThreeAndFive() {
  for (let counter = 1; counter <= 100; counter += 1) {
    if ((counter % 3 === 0 && counter % 5 !== 0) || (counter % 5 === 0 && counter % 3 !== 0)) {
      console.log(String(counter));
    } else if (counter % 3 === 0 && counter % 5 === 0) {
      console.log(String(counter) + '!');
    }
  }
}

multiplesOfThreeAndFive();

// Better logic is to do the both first:

function multiplesOfThreeAndFive() {
  for (let counter = 1; counter <= 100; counter += 1) {
    if (counter % 3 === 0 && counter % 5 === 0) {
      console.log(String(counter) + '!');
    } else if (counter % 3 === 0  || counter % 5 === 0) {
      console.log(String(counter));
    }
  }
}

// Further Exploration

function multiplesOfThreeAndFive(start, end) {
  for (let counter = start; counter <= end; counter += 1) {
    if (counter % 3 === 0 && counter % 5 === 0) {
      console.log(String(counter) + '!');
    } else if (counter % 3 === 0  || counter % 5 === 0) {
      console.log(String(counter));
    }
  }
}

multiplesOfThreeAndFive(30, 90);
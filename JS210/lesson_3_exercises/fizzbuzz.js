function fizzBuzz() {
  for ( let counter = 1; counter <= 100; counter += 1) {
    if (counter % 3 === 0 && counter % 5 === 0) {
      console.log('FizzBuzz');
    } else if (counter % 3 === 0) {
      console.log('Fizz');
    } else if (counter % 5 === 0) {
      console.log('Buzz');
    } else {
      console.log(counter);
    }
  }
}

fizzBuzz();

// Further Exploration

let fizzbuzz = () => {
  for (let index = 1; index <= 100; index += 1) {
    let message = '';

    if (index % 3 === 0) {
      message += 'Fizz';
    }

    if (index % 5 === 0) {
      message += 'Buzz';
    }

    console.log(message || index);
  }
};
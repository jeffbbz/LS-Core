document.addEventListener('DOMContentLoaded', () => {
  let input = document.getElementById('guess');
  let form = document.querySelector('form');
  let paragraph = document.querySelector('p')
  let submit = document.querySelector('[type="submit"]');
  let answer;

  function isValidInteger(num) {
    return Number.isInteger(num) && num > 0 && num < 101;
  }
  function newGame() {
    resetCSS();
    answer = Math.floor(Math.random() * 100) + 1;
    paragraph.textContent = 'Guess a number from 1 to 100';
  }

  function resetCSS() {
    submit.disabled = false;
    input.disabled = false;
    submit.style.background = "";
    submit.style.border = "";
    submit.style.boxShadow = "";
  }

  function disableGuessButton() {
    submit.style.background = 'gray';
    submit.style.border = 'gray';
    submit.style.boxShadow = 'none';
    submit.disabled = true;
    input.disabled = true;
  }

  form.addEventListener('submit', event => {
    event.preventDefault();
    let guess;
    let message;

    if (!isValidInteger(parseInt(input.value, 10))) {
      message = 'Your guess must be a valid integer between 1-100';
    } else {
      guess = parseInt(input.value, 10);

      if (guess > answer) {
        message = `The number is lower than ${String(guess)}`;
      } else if (guess < answer) {
        message = `The number is higher than ${String(guess)}`;
      } else {
        message = `Correct! The number is ${String(answer)}!`;
        disableGuessButton();
      }
    }

    paragraph.textContent = message;
  });

  let newGameLink = document.querySelector('a');
  newGameLink.addEventListener('click', event => {
    event.preventDefault();
    newGame();
  });

  newGame();
});




document.addEventListener("DOMContentLoaded", () => {
  const message = document.querySelector('#message');
  const letterSpaces = document.querySelector('#spaces');
  const letterGuesses = document.querySelector('#guesses');
  const apples = document.querySelector('#apples');
  const replayLink = document.querySelector('#replay');

  let game;

  const isNotAlphabetic = (char) => /[^A-Z]/i.test(char);

  const randomWord = function() {
    const WORDS = ['apple', 'banana', 'orange', 'pear'];

    function randomIdx() {
      return Math.floor(Math.random() * WORDS.length);
    }

    return function() {
      return WORDS.splice(randomIdx(), 1)[0];
    }
  }();

  class Game {
    constructor() {
      this.word = this.chooseWord().split('');
      this.remainingGuesses = 6;
      this.wrongGuesses = 0;
      this.lettersGuessed = [];
      this.createWordLetterBlanks();

      replayLink.toggleAttribute('hidden')
      document.addEventListener('keyup', this.checkGuess)
    }

    chooseWord() {
      let word = randomWord();
      if (!word) {
        message.textContent = "Sorry, I've run out of words";
      } else {
        return word;
      }
    }

    insertWrongGuess(letter) {
      let newSpan = document.createElement('SPAN');
      newSpan.textContent = letter;
      letterGuesses.append(newSpan);
    }

    processWrongGuess(letter) {
      this.lettersGuessed.push(letter);
      this.insertWrongGuess(letter);
      this.wrongGuesses += 1;
      apples.className = `guess_${this.wrongGuesses}`;
    }

    processCorrectGuess(letter) {
      let blanksSpaces = letterSpaces.querySelectorAll('span');
      let matchIndex;

      while (this.word.includes(letter)) {
        matchIndex = this.word.indexOf(letter)
        this.word.splice(matchIndex, 1, '')
        blanksSpaces[matchIndex].textContent = letter;
      }
    }

    invalidGuess(letter) {
      return isNotAlphabetic(letter) || this.lettersGuessed.includes(letter);
    }

    checkGuess(event) {
      let letter = event.key;
      if (game.invalidGuess(letter)) return;

      if (game.word.includes(letter)) {
        game.processCorrectGuess(letter)
      } else {
        game.processWrongGuess(letter);
      }

      if (game.result()) game.gameOver(game.result());
    }

    result() {
      if (this.remainingGuesses === this.wrongGuesses) {
        return 'lose';
      } else if (this.word.every(letter => letter === '')) {
        return 'win';
      }
    }

    createWordLetterBlanks() {
      let blankNumber = this.word.length;

      while (blankNumber > 0) {
        let newSpan = document.createElement('SPAN');
        letterSpaces.append(newSpan);
        blankNumber -= 1;
      }
    }

    gameOver(result) {
      document.removeEventListener('keyup', this.checkGuess);

      document.body.classList.add(result);
      replayLink.toggleAttribute('hidden')

      if (result === 'win') {
        message.textContent = 'You Won!'
      } else {
        message.textContent = "Sorry! You're out of guesses!"
      }
    }

    reset() {
      message.textContent = '';
      document.body.classList.remove('win', 'lose');

      let wordSpans = letterSpaces.querySelectorAll('span');
      wordSpans.forEach(span => span.remove());

      let guessSpans = letterGuesses.querySelectorAll('span');
      guessSpans.forEach(span => span.remove());
    }
  }

  replayLink.addEventListener('click', event => {
    event.preventDefault();
    game.reset();
    game = new Game();
  });

  game = new Game();
})



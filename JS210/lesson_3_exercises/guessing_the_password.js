const PASSWORD = 'password';
const ATTEMPTS = 3;

function logIn() {
  for (let attempt = 1; attempt <= ATTEMPTS; attempt += 1) {
    let guess = prompt('What is the password:');
    if (guess === PASSWORD) {
      console.log('You have successfully logged in.');
      return
    }
  }
  console.log('You have been denied access.');
}

logIn();
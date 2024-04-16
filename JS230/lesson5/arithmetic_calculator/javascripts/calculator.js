document.addEventListener("DOMContentLoaded", () => {
  function calculate(opString, firstNum, secondNum) {
    switch (opString) {
      case '+':
        return firstNum + secondNum;
      case '-':
        return firstNum - secondNum;
      case '*':
        return firstNum * secondNum;
      case '/':
        return firstNum / secondNum;
    }
  }

  let form = document.querySelector('form');

  form.addEventListener('submit', event => {
    event.preventDefault();

    let operator = form.querySelector('#operator')
    let firstNumber = form.querySelector('#first-number');
    let secondNumber = form.querySelector('#second-number');
    let result = document.querySelector('#result');

    let answer = calculate(operator.value, Number(firstNumber.value), Number(secondNumber.value));
    result.textContent = String(answer);
  });
});


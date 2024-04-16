function callback1() {
  console.log('callback1');
}

function callback2() {
  console.log('callback2');
}

function callback3() {
  console.log('callback3');
}

function randomizer(...callbacks) {
  let time = callbacks.length * 2;
  let elapsedTime = 0;

  let timerInterval = setInterval(() => {
    elapsedTime += 1;
    console.log(elapsedTime);
    if (elapsedTime === time) clearInterval(timerInterval);
  }, 1000);

  callbacks.forEach(callback => {
    let randomTimeout = Math.floor(Math.random() * time * 1000);
    setTimeout(callback, randomTimeout);
  });
}

randomizer(callback1, callback2, callback3);

// Output:
// 1
// 2
// "callback2"
// 3
// "callback3"
// 4
// 5
// "callback1"
// 6
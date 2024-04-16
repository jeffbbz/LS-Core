function basicCallback(callback, num) {
  setTimeout(() => callback(num), 2000);
}

basicCallback((number) => {
  console.log(number * 2);
}, 5);


function downloadFile(callback) {
  console.log('Downloading file...');
  setTimeout(() => callback('Download complete!'), 1500);
}

downloadFile(console.log);

function processData(numbers, callback) {
  setTimeout(() => {
    console.log(numbers.map(callback));
  }, 1000);
}

processData([1, 2, 3], (number => number * 2));

function waterfallOverCallbacks(callbacks, num) {
  let result = num;
  callbacks.forEach(callback => result = callback(result));
  console.log(result);
}

const double = (x) => x * 2;
waterfallOverCallbacks([double, double, double], 1);



function startCounter(callback) {
  let counter = 0;
  let counterId = setInterval(() => {
    if (callback(counter)) clearInterval(counterId);
    counter += 1;
  }, 1000);
}

startCounter((count) => {
  console.log(count);
  return count === 5;
});

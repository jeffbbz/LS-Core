//
// let downloadFilePromise = new Promise((resolve, reject) => {
//   console.log("Downloading file...");
//   setTimeout(() => resolve('Download complete!'), 1500);
// });
//
// downloadFilePromise.then(successMessage => console.log(successMessage))
//
//
// function downloadFilePromise() {
//   return new Promise(resolve => {
//     console.log('Downloading file...');
//     setTimeout(() => resolve('Download complete!'), 1500);
//   });
// }
//
// downloadFilePromise()


// function processData(numbers, callback) {
//   setTimeout(() => {
//     console.log(numbers.map(callback));
//   }, 1000);
// }


// function processDataPromise(array) {
//   return new Promise(resolve => {
//     setTimeout(() => {
//       resolve(array.map(num => num * 2))
//     }, 1000);
//   });
// }
//
// // Example usage:
// processDataPromise([1, 2, 3]).then((processedNumbers) => {
//   console.log(processedNumbers);
//   // After 1 second, logs: [2, 4, 6]
// });

// function flakyService() {
//   return new Promise((resolve, reject) => {
//     let randomNum = Math.floor(Math.random() * 2);
//     if (randomNum === 0) {
//       resolve("Operation successful");
//     } else {
//       reject("Operation failed");
//     }
//   })
//     .then(successMessage => console.log(successMessage))
//     .catch(errorMessage => console.error(errorMessage));
// }
//
// flakyService();


// function someOperation() {
//   return new Promise((resolve) => {
//     console.log("Some operation started");
//     setTimeout(() => resolve("Some operation complete"), 1000);
//   })
//     .then(successMessage => console.log(successMessage))
//     .finally(() => console.log('Cleaning resources...'));
// }
//
// someOperation();
//
// // Or
//
// function someOperation() {
//   return new Promise((resolve) => {
//     console.log("Some operation started");
//     setTimeout(() => resolve("Some operation complete"), 1000);
//   });
// }
//
// someOperation()
//   .then(successMessage => console.log(successMessage))
//   .finally(() => console.log('Cleaning resources...'));
//
// // Or
//
// let someOperation = new Promise((resolve) => {
//   console.log("Some operation started");
//   setTimeout(() => resolve("Some operation complete"), 1000);
// });
//
// someOperation
//   .then(successMessage => console.log(successMessage))
//   .finally(() => console.log('Cleaning resources...'));
//
// // or
//
// let someOperation = new Promise((resolve) => {
//   console.log("Some operation started");
//   setTimeout(() => resolve("Some operation complete"), 1000);
// })
//   .then(successMessage => console.log(successMessage))
//   .finally(() => console.log('Cleaning resources...'));
//
// someOperation;

new Promise(resolve => {
  resolve(10);
})
  .then(value => value * 2)
  .then(value => value + 5)
  .then(console.log);

// or

Promise.resolve(10)
  .then(value => value * 2)
  .then(value => value + 5)
  .then(console.log);

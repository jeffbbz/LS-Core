// function flakyService() {
//   return new Promise((resolve, reject) => {
//     let randomNum = Math.floor(Math.random() * 2);
//     if (randomNum === 0) {
//       resolve("Operation successful");
//     } else {
//       reject("Operation failed");
//     }
//   })
//     .then(console.log)
//     .catch(errorMessage => console.error('An error occured'));
// }
//
// flakyService();

// function fetchUserData() {
//   return new Promise((resolve, reject) => {
//     setTimeout(() => reject({error: "User not found"}), 500);
//   });
// }
//
// fetchUserData()
//   .catch((error) => console.log(error.error))
//   .finally(() => console.log("Fetching complete"));

// function retryOperation(operationFunc) {
//   let attempts = 0;
//
//   function attempt() {
//     return operationFunc().catch(error => {
//       if (attempts < 2) {
//         attempts += 1;
//         console.log(`Retry attempt #${attempts}`);
//         return attempt();
//       } else {
//         throw error;
//       }
//     });
//   }
//
//   return attempt()
//     .then(console.log)
//     .catch(() => console.error("Operation failed"));
// }
//
// // Example usage:
// retryOperation(() => {
//   return new Promise((resolve, reject) => {
//     return Math.random() > 0.33 ? resolve("Success!") : reject(new Error("Fail!"));
//   });
// });

// function mockAsyncOp() {
//   return new Promise((resolve, reject) => {
//     setTimeout(() => {
//       if (Math.random() > 0.5) {
//         resolve("Operation succeeded");
//       } else {
//         reject("Operation failed");
//       }
//     }, 1000);
//   });
// }
//
// mockAsyncOp()
//   .then(console.log)
//   .catch(console.error)
//   .finally(() => console.log("Operation attempted"));

function loadData() {
  console.log("Fetching Data...");
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      if (Math.random() > 0.5) {
        resolve("Data loaded");
      } else {
        reject("Network error");
      }
    }, 1000);
  }).catch(() => {
    console.error("An error occurred. Attempting to recover...");
    return Promise.resolve("Using cached data");
  });
}

loadData().then(console.log);

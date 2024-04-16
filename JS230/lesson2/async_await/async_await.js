// let downloadFilePromise = new Promise((resolve, reject) => {
//   console.log("Downloading file...");
//   setTimeout(() => resolve('Download complete!'), 1500);
// });
//
// // LS Answer:

// async function asyncDownloadFile() {
//     console.log('Downloading file...');
//     let complete = await new Promise(resolve => {
//       setTimeout(() => resolve('Download complete!'), 1500);
//     });
//     console.log(complete);
// }
//
// asyncDownloadFile()


// async function asyncLoadData() {
//   console.log('Loading data...');
//
//   try {
//     let message = await new Promise((resolve, reject) => {
//       setTimeout(() => {
//         if (Math.random() > 0.5) {
//           resolve("Data loaded.");
//         } else {
//           reject("Data Load Failed.");
//         }
//       }, 1000);
//     });
//     console.log(message);
//   } catch (error) {
//     console.error(error);
//   }
// }
//
// asyncLoadData()

// async function fetchResource(url) {
//   try {
//     let response = await fetch(url)
//     let data = await response.json();
//     console.log(data);
//   } catch (error) {
//     console.error("Failed to load resource");
//   } finally {
//     console.log("Resource fetch attempt made")
//   }
// }
//
// // Example usage:
// fetchResource("https://jsonplaceholder.typicode.com/todos/1");
// // Logs fetched data, then "Resource fetch attempt made"
// // On error, logs "Failed to load resource", then "Resource fetch attempt made"


async function fetchUserProfile(userId) {
  try {
    let profile = await fetch(`https://jsonplaceholder.typicode.com/users/${userId}`)
                  .then(response => response.json());
    console.log(profile);
  } catch (error) {
    console.error("Failed to load profile", error);
  }

  try {
    let posts = await fetch(`https://jsonplaceholder.typicode.com/users/${userId}/posts`)
                .then(response => response.json());
    console.log(posts);
  } catch (error) {
    console.error("Failed to load posts", error);
  }

  try {
    let comments = await fetch(`https://jsonplaceholder.typicode.com/users/${userId}/comments`)
                   .then(response => response.json());
    console.log(comments);
  } catch (error) {
    console.error("Failed to load comments", error);
  }
}

// Example usage:
fetchUserProfile(1);
// Logs user profile, posts, and comments. Catches and logs errors at each step if they occur.
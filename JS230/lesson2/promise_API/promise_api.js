loadMultipleResources([
  "https://jsonplaceholder.typicode.com/todos/1",
  "invalidUrl",
]).then((results) => {
  results.forEach((result) => {
    if (result.status === "fulfilled") {
      console.log("Fetched data:", result.value);
    } else {
      console.error(result.reason);
    }
  });
});

function loadMultipleResources(urls) {
  let fetchedPromises = urls.map(url => {
    return fetch(url).then(response => response.json())
                     .catch(() => "Failed to fetch!")
  });

  return Promise.allSettled(fetchedPromises);
}

// Fetched data: { userId: 1, id: 1, title: 'delectus aut autem', completed: false }
// Fetched data: Failed to fetch!

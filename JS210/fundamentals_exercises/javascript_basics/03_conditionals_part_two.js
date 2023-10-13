if (condition1) {
  // ...
  if (condition2) {
    // ...
  } else {
    // ...
  }
} else {
  // ...
  if (condition4) {
    // ...
    if (condition5) {
      // ...
    }
  }
}

// 1. condition1 + condition2
// 2. condition1 + else
// 3. else
// 4. else + condition 4
// 5. else + condition 4 + condition 5
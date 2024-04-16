let i = 0;
while (i < 10) {
  if (i % 3 === 0) {
    console.log(i); // 0 0 0 0 0 0 0 0...
  } else {
    i += 1;
  }
}

// This will infinitely loop logging only `0` on ever iteration. This is because the loop has no way to reach the while condition
// as the incrementation of the `i` value is inside the else clause of the if else statement. As the first value of `i`, `0`, will cause
// the conditional expression to evaluate to true for the if condition, we will log that value and will not reach the else clause.
// Then the loop will iterate again. As the value hasn't changed and has no way to change, this will loop infinitely.

// We can fix this by removing the else clause.

let i = 0;
while (i < 10) {
  if (i % 3 === 0) {
    console.log(i);  // 0 3 6 9
  }

  i += 1;
}

// However we probably don't want to log 0 so we can either change the intialized value of i to 1

let i = 1;
while (i < 10) {
  if (i % 3 === 0) {
    console.log(i);  // 3 6 9
  }

  i += 1;
}

// Or we can add to the if condition to exclude zero in some manner:

let i = 0;
while (i < 10) {
  if (i > 0 && i % 3 === 0) {
    console.log(i);  // 3 6 9
  }

  i += 1;
}
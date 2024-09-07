function assignTreats(appetite, treats) {
  appetite.sort((a, b) => a - b);
  treats.sort((a, b) => a - b);

  let satisfied = 0
  let aIdx = 0;

  for (let tIdx = 0; aIdx < appetite.length && tIdx < treats.length; tIdx++) {
    if (treats[tIdx] >= appetite[aIdx]) {
      satisfied++;
      aIdx++;
    }
  }

  return satisfied;
}

console.log(assignTreats([3, 4, 2], [1, 2, 3]) === 2);
console.log(assignTreats([1, 5], [5, 5, 6]) === 2);
console.log(assignTreats([1, 2, 3], [3]) === 1);
console.log(assignTreats([2], [1, 2, 1, 1]) === 1);
console.log(assignTreats([4, 3, 1], [2, 1, 3]) === 2);
console.log(assignTreats([1,2,3], [1,2,3]) === 3);
console.log(assignTreats([4, 5, 6], [1,2,3]) === 0);

// All test cases should log true.
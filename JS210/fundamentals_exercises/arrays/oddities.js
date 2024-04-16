function oddities(array) {
  const oddElements = [];

  for (let i = 0; i < array.length; i += 2) {
    oddElements.push(array[i]);
  }

  return oddElements;
}

oddities([2, 3, 4, 5, 6]) === [2, 4, 6];      // false
oddities(['abc', 'def']) === ['abc'];         // false


// When we compare arrays with the equality operators in JS we are comparing object equality,
// not value equality. In otherwords, this comparison will only return true if both elements are
// the same array object, not if they have the same values as elements.
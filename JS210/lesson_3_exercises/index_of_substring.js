function indexOf(firstString, secondString) {
  let result = -1;
  let matches;
  for ( let firstIndex = 0; (firstIndex < firstString.length) || (matches === secondString.length); firstIndex += 1) {
    if (firstString[firstIndex] === secondString[0]) {
      result = firstIndex
      for (let secondIndex = 1; secondIndex < secondString.length; secondIndex += 1) {
        if (firstString[firstIndex + secondIndex] === secondString[secondIndex]) {
          matches = secondIndex;
        } else {
          result = -1;
          break;
        }
      }
      break;
    }
  }
  return result;
}

function lastIndexOf(firstString, secondString) {
  let result = -1;
  let matches;
  for ( let firstIndex = firstString.length; (firstIndex > 0) || (matches === secondString.length); firstIndex -= 1) {
    if (firstString[firstIndex] === secondString[0]) {
      result = firstIndex
      for (let secondIndex = 1; secondIndex < secondString.length; secondIndex += 1) {
        if (firstString[firstIndex + secondIndex] === secondString[secondIndex]) {
          matches = secondIndex;
        } else {
          result = -1;
          break;
        }
      }
      break;
    }
  }
  return result;
}

console.log(indexOf('Some strings', 's'));                      // 5
console.log(indexOf('Blue Whale', 'Whale'));                    // 5
console.log(indexOf('Blue Whale', 'Blute'));                    // -1
console.log(indexOf('Blue Whale', 'leB'));                      // -1

console.log(lastIndexOf('Some strings', 's'));                  // 11
console.log(lastIndexOf('Blue Whale, Killer Whale', 'Whale'));  // 19
console.log(lastIndexOf('Blue Whale, Killer Whale', 'all'));    // -1
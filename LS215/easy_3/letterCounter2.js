

function wordSizes(string) {
  let count = {};
  if (string.length === 0) return count;
  let sizes = string.replaceAll(/[^a-z ]/ig, '').split(' ').map(word => word.length);

  sizes.forEach(size => {
    if (count[size]) {
      count[size] += 1;
    } else {
      count[size] = 1;
    }
  })
  return count;
}


console.log(wordSizes('Four score and seven.'));                       // { "3": 1, "4": 1, "5": 1, "6": 1 }
console.log(wordSizes('Hey diddle diddle, the cat and the fiddle!'));  // { "3": 5, "6": 1, "7": 2 }
console.log(wordSizes("What's up doc?"));                              // { "2": 1, "4": 1, "6": 1 }
console.log(wordSizes(''));                                            // {}
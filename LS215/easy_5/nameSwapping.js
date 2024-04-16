function swapName(name) {
  return name.split(' ').reverse().join(', ');
}

console.log(swapName('Joe Roberts'));    // "Roberts, Joe"

// Further Exploration

function swapNameWithMoreFirstNames(name) {
  let reverseNameArr = name.split(' ').reverse();
  reverseNameArr[0] = reverseNameArr[0] + ',';
  [reverseNameArr[1], reverseNameArr[2]] = [reverseNameArr[2], reverseNameArr[1]]
  return reverseNameArr.join(' ');
}

console.log(swapNameWithMoreFirstNames('Joe Jim Roberts'));    // "Roberts, Joe Jim"

// Another Try

function swapName2(name) {
  let [last, ...first] = name.split(' ').reverse();
  return [last, first.reverse().join(' ')].join(', ')
}

console.log(swapName2('Joe Jim Roberts'));    // "Roberts, Joe Jim"

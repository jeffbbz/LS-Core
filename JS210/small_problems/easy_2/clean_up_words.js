function cleanUp(text) {
  let cleanString = text.replaceAll(/[^a-z]/gi, ' ');
  let wellSpaced = '';
  for (let index = 0; index < cleanString.length; index += 1) {
    if (cleanString[index] === ' ' && cleanString[index + 1] === ' ') {
      continue;
    } else {
      wellSpaced += cleanString[index];
    }
  }

  return wellSpaced;
}

console.log(cleanUp("---what's my +*& line?"));    // " what s my line "

// Better Regex `+` is a quantifier tha matches 1 or more of the token preceding it.

function cleanUp(text) {
  return text.replaceAll(/[^a-z]+/gi, ' ');
}

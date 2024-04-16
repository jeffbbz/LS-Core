function diamond(size) {
  let starCount = 1;
  let spaceCount = (size - 1) / 2;

  while (starCount < size) {
    console.log(' '.repeat(spaceCount) + '*'.repeat(starCount) + ' '.repeat(spaceCount));
    starCount += 2;
    spaceCount -= 1;
  }

  while (starCount >= 1) {
    console.log(' '.repeat(spaceCount) + '*'.repeat(starCount) + ' '.repeat(spaceCount));
    starCount -= 2;
    spaceCount += 1;
  }
}

diamond(1);
diamond(3);
diamond(9);
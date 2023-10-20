function logInBox(text) {
  let dashes = '-'.repeat(text.length + 2);
  let spaces = ' '.repeat(text.length + 2);
  console.log(`+${dashes}+`);
  console.log(`|${spaces}|`)
  console.log(`| ${text} |`)
  console.log(`|${spaces}|`)
  console.log(`+${dashes}+`);
}

logInBox('To boldly go where no one has gone before.');
// +--------------------------------------------+
// |                                            |
// | To boldly go where no one has gone before. |
// |                                            |
// +--------------------------------------------+

logInBox('');
// +--+
// |  |
// |  |
// |  |
// +--+
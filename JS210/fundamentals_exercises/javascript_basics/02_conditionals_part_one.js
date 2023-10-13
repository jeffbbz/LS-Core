const myBoolean = true;
const myString = 'hello';
const myArray = [];
const myOtherString = '';

if (myBoolean) {
  console.log('Hello');             // 'Hello'
}

if (!myString) {
  console.log('World');             // does not execute
}

if (!!myArray) {
  console.log('World');             // 'World'
}

if (myOtherString || myArray) {
  console.log('!');                 // '!'
}

// These results were what I anticipated. All of the lines that executed evaluated to truthy values while
// line 15 evaluted to false


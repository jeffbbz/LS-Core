// const greeter = {
//   name: 'Naveed',
//   greeting: 'Hello',
//   message() {
//     return `${this.greeting} ${this.name}!`;
//   },
//   sayGreetings() {
//     console.log(this.message());
//   }
// };
//
// greeter.sayGreetings();

// Solution 2

// const greeter = {
//   message() {
//     let name = 'Naveed';
//     let greeting = 'Hello';
//
//     return `${greeting} ${name}!`;
//   },
//   sayGreetings() {
//     console.log(this.message());
//   }
// };
//
// greeter.sayGreetings();

// Solution 3 with IIFE

const greeter = {
  message: (() => {
    let name = 'Naveed';
    let greeting = 'Hello';

    return `${greeting} ${name}!`;
  })(),
  sayGreetings() {
    console.log(this.message);
  }
};

greeter.sayGreetings();
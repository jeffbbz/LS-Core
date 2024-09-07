// class Person {
//   name: string;
//   age: number;
//
//   constructor(name: string, age: number) {
//     this.name = name;
//     this.age = age;
//   }
//
//   describe(): string {
//     return `${this.name} is ${this.age} years old.`
//   }
// }
//
// const person = new Person("Alice", 30);
// console.log(person.describe()); // Alice is 30 years old.


// Or instead of typing the variables at the top of the class we can use the `public`
// keyword with the constructor parameters instead.

class Person {
  constructor(public name: string, public age: number) {
  }

  describe(): string {
    return `${this.name} is ${this.age} years old.`
  }
}

const person = new Person("Alice", 30);
console.log(person.describe()); // Alice is 30 years old.
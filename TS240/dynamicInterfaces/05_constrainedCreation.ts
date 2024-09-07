// function getProperty<T, K extends keyof T>(obj: T, key: K) {
//   return obj[key];
// }
//
// console.log(getProperty({name: "Terry", age: 45}, "name")); // Terry
// console.log(getProperty({name: "Larry", age: 45}, "age")); // 45
//
// // Generic contraints help limit the types which can be used as argument for a generic function
// // In this example, type variable K is contrained to be a key of type variable T where T is the type
// // of the object passed to the function and K the the type of the key

type Person = {
  name: string;
  age: number;
}

type Pet = {
  name: string;
  age: number;
}

let terry: Person = {
  name: "terry",
  age: 36,
}

let terryPet: Pet = terry;
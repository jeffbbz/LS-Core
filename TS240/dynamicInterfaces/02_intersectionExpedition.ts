interface Dog {
  bark(): void;
}

interface Cat {
  meow(): void;
}

type Pet = Dog & Cat;

let pet: Pet = {
  bark: () => console.log("Woof"),
  meow: () => console.log("Meow"),
}

pet.bark(); // Woof
pet.meow(); // Meow

// Type intersections combine multiple types into a single type. With type intersections,
// we can mix multiple interfaces making a sort of super type that has all of the members
// of all combined interfaces
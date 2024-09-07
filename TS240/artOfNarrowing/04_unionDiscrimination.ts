type Circle = {
  kind: 'circle';
  radius: number;
};

type Square = {
  kind: "square";
  sideLength: number;
};

type Shape = Circle | Square;

function getArea(shape: Shape): number {
  switch(shape.kind) {
    case "circle": return Math.PI * shape.radius ** 2;
    case "square": return shape.sideLength ** 2;
  }
}

console.log(getArea({ kind: "circle", radius: 10 })); // 314.1592653589793
console.log(getArea({ kind: "square", sideLength: 10 })); // 100

// Our Shape subtypes each hav a discriminant property which is used to narrow down the object type
// inside our function. This pattern is called discriminated unions.
function assertNever(input: never): never {
  throw new Error('Error!');
}

type Circle = {
  kind: "circle";
  radius: number;
};

type Square = {
  kind: "square";
  sideLength: number;
};

type Shape = Circle | Square;

function getArea(shape: Shape): number {
  switch (shape.kind) {
    case "circle": return Math.PI * shape.radius ** 2;
    case "square": return shape.sideLength ** 2;
    default: return assertNever(shape);
  }
}

console.log(getArea({ kind: "circle", radius: 10 })); // 314.1592653589793
console.log(getArea({ kind: "square", sideLength: 10 })); // 100
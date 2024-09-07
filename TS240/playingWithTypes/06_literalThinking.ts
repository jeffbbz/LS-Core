type Direction = "left" | "right" | "up" | "down";
let move: Direction = "left";

// On line 1, we define a new type alias to the union type of the four string literal values.
// This means that if something is typed with the `Direction` type, it can only be assigned
// on of those four string literal values or a type error will be raised. If we attempt the
// following:

move = "north";

// The TS compiler will raise the following error:
// Type '"north"' is not assignable to type 'Direction'.
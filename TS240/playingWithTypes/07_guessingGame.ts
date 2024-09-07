let userID = 98;

// Although we do not explicitly type our `userID` variable,
// The TS compiler is able to infer the type from the first value we assign
// to it, a number value, and implicitly set its type to number (`let userID: number`).
// Thus if we attempt to assign a type that is not number or
// compatible with number, we will raise an error.

userID = "horse"; // TS2322: Type 'string' is not assignable to type 'number'.

let randomValue: any = 'hello world';
console.log((randomValue as string).toUpperCase());


// On line 1 we type `randomValue` to any. This bypasses the type checker is adviced against.
// The on line 2 we use a type assertion to tell the compiler that the value type of randomValue
// is a string, and then we call a string method on it. This is not really necessary though
// as the type checker will not stop us from calling string methods on an any type value.
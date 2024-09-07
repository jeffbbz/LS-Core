function wrapInArray(val: string | number): Array<string | number> {
  return [val];
}

console.log(wrapInArray("hello"));
console.log(wrapInArray(100));

// A union type is a new type created from several existing types.
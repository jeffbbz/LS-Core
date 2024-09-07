function logUnknown(input: unknown): void {
  if (typeof input === "string") console.log(input);
}

logUnknown("hat"); // hat
logUnknown(9);
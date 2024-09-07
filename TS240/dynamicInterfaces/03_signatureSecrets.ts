interface StringMap {
  [key: string]: string;
}

let dictionary: StringMap = {
  horse: "Hat",
  dog: "House",
};

// On line 2 of our interface we use an index signature to specify the types of
// keys and values are able to be used with an object typed to that interface.
// We can add any key or value to our dictionary object as long as they are both string types.

// We could also use the Record utility type for this:

let anotherDictionary: Record<string, string> = {
  horse: "Hat",
  dog: "House",
};
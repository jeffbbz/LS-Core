interface KeyValuePair<Key, Value> {
  key: Key;
  value: Value;
}

let pair: KeyValuePair<string, number> = {
  key: "hatNumber",
  value: 9,
};

// Here we use generics to create a generic interface to define a generic structure for an
// object that can still be somewhat type safe
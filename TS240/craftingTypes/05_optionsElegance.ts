type Contact2 = {
  firstName: string;
  lastName: string;
  age?: number;
  isOnline?: boolean;
};

let contact1: Contact2 = {
  firstName: "Gord",
  lastName: "Morsels",
  age: 40,
}

let contact2: Contact2 = {
  firstName: "Todd",
  lastName: "Mortels",
  isOnline: true,
}

let contact3: Contact2 = {
  firstName: "Tim",
  lastName: "Bevels",
}

// By appending a `?` to the end of a property name, we can make object properties optional
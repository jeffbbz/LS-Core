type Device = {
  manufacturer: string;
  model: string;
  year: number;
};

let computer: Device = {
  manufacturer: "Apple",
  model: "iMac",
  year: 2015,
};

let smartphone = {
  manufacturer: "Apple",
  model: "iPhone Mini 12",
  year: 2022,
  weight: 10,
};

let otherPhone: Device = smartphone;
console.log(otherPhone.weight);

/*

TS structural type system means that type compatability is based on the structure/shape
(properties and their shapes) of types involved.

Here we do not explicity declare a type for the `smartphone` object defined on lines 12-18.
Thus TS implicitly infers its type to be `{manufacturer: string, model: string, year: number, weight: number}`
aka the initial value it was assigned.

In TS a type that shares at least the same properties (but can have more) as another type is compatible with
that type, thus we can assign smartphone to the otherPhone variable even though it is
typed to Device.

However, the weight property will not be accessible from within typescript on `otherPhone`
(But does still exist in JS)
 */
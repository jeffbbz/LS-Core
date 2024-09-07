interface Car {
  make: string,
  model: string,
  year: number,
}

let myCar: Car = {
  make: 'Hyundai',
  model: 'Sonata',
  year: 2014,
};

// On lines 1-5 we define an interface, which is used in TS to describe the shape
// of objects and ensure they match a certain form. On line 7-11 we define the myCar
// object which implements the Car interface and thus must have the members and value types
// described in the interface.
interface Person {
  name: string;
  age: number;
}

interface Employee extends Person {
  employeeId: number;
}

let employee: Employee = {
  name: "Thod",
  age: 78,
  employeeId: 32431,
}

// Here we extend the person interface to create the Employee interface that inherits the properties
// of Person and adds its own unique property.
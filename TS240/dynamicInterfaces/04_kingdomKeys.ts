interface UserData {
  name: string;
  age: number;
  email: string;
}

type userDataKeys = keyof UserData;

function printValue(obj: UserData, key: userDataKeys) {
  console.log(obj[key]);
}

let user: UserData = {
  name: "Thany",
  age: 34,
  email: "gords@house.com",
}

printValue(user, "name"); // Thany
printValue(user, "age"); // 34
printValue(user, "email"); // gords@house.com

// The TS `keyof` operator creates a union of all known public property keys of a type
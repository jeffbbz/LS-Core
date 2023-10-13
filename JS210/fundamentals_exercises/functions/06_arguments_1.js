let a = 7;

function myValue(b) {
  b += 10;
}

myValue(a);
console.log(a); // 7

// a references a number which being a primitive data type is immutable. Thus when a
// primitive value is passed as an argument to a method or function a new copy is operated on
// by function/method and nothing those procedures perform can alter the value of the original value.
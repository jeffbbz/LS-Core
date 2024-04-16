// const myObject = {
//   prop1: '123',
//   prop2: '234',
//   'prop 3': '345',
// };
//
// const prop2 = '456';
// myObject['prop2'] = '456';
// myObject[prop2] = '678';
//
// console.log(myObject[prop2]); // 678
// console.log(myObject.prop2);  // 456
// console.log(myObject);        // { '456': '678', prop1: '123', prop2: '456', 'prop 3': '345' }

// On lines 1-5 we declare a constant myObject and intialize it to an object literal with three property name-value pairs.
// Then on line 7 we declare another constant prop2 and initialize it to the string primitive '456'. Line 8 is fairly straightforward,
//  using bracket notation, we re-assign the value of the myObject object property with the name 'prop2' to '456'. Line 9 is a little trickier.
// Here we are using bracket notation on the object literal but passing in the value held by the variable prop2, which was intialized to '456' on line 7.
// As there is no property name with that name in the object, this syntax is adding new name value pair of `'456': '678'` to the object.

// Thus when we pass line 11 to console.log, we are passing the value attached to the key '456' which is the value held by the prop2 variable and thus why we
// log 678. Meanwhile like 12 uses dot notation to access the property named 'prop2' which has a value of '456' which is what is logged.

// Further Exploration

const myObj = {};
myObj[myFunc()] = 'hello, ';

function myFunc() {
  return 'funcProp';
}

console.log(myObj);
myObj[myFunc()] = 'world!';
console.log(myObj);

{ funcProp: 'hello, ' }
{ funcProp: 'world!'  }

console.log((false && undefined));                              // false
console.log((false || undefined));                              // undefined
console.log(((false && undefined) || (false || undefined)));    // undefined
console.log(((false || undefined) || (false && undefined)));    // false
console.log(((false && undefined) && (false || undefined)));    // false
console.log(((false || undefined) && (false && undefined)));    // undefined
console.log(('a' || (false && undefined) || ''));               // a
console.log(((false && undefined) || 'a' || ''));               // a
console.log(('a' && (false || undefined) && ''));               // undefined
console.log(((false || undefined) && 'a' && ''));               // undefined

// When evaluating statements in JavaScript
// Rules:
//
//  `||` OR will 1.stop at the first instance of truthy and return that value
// 2. `&&` AND will stop at the first instance of falsy and return that value
// 3. If we don't stop for any of the reasons above, the last value is returned

// Falsy Values in JS
// false
// null
// undefined
// 0
// NaN
// ""
// ``
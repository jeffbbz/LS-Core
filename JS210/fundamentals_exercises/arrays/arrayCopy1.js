let myArray = [1, 2, 3, 4];
const myOtherArray = myArray;

myArray.pop();
console.log(myArray);
console.log(myOtherArray);

myArray = [1, 2];
console.log(myArray);
console.log(myOtherArray);

// Both lines will log `[1, 2, 3]`. This is because initially, both `myArray` and
// `myOtherArray` reference the same array. Thus when the `pop` method is called on
// line 4, removing the final element of the array they both reference, this
// will be reflected in both `log` calls on lines 5 and 6. However, on line 8, `myArray`
// is re-assigned to reference a new array `[1, 2]`. This re-assignment has no effect
// on `myOtherArray`, which still references the array `[1, 2, 3]`.
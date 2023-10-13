let a = 7;

function myValue(a) {
  a += 10;
}

myValue(a);
console.log(a); // 7

// This works the same as the previous problem. As the value referenced by `a` is an immutable
// number primitive it cannot be altered by the functions operations. Additionally, the `a` varible
// inside the `myValue` function is not the same variable as the variable declared on line 1 of the
// top level, it is a local variable scoped to the function, which is assigned a copy of the value of the
// argument passed in on line 7
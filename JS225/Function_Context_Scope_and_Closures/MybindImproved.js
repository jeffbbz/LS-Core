function myBind(func, context, ...firstArgs) {
  return function(...moreArgs) {
    let allArgs = firstArgs.concat(moreArgs);
    return func.apply(context, allArgs);
  };
}

function addNumbers(a, b) {
  return a + b;
}

const addFive = myBind(addNumbers, null, 5);

console.log(addFive(10)); // 15
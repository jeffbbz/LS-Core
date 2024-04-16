function myBind(func, context) {
  return function() {
    return func.apply(context);
  };
}

// LS: "The above solutions leverages Function.prototype.apply and the concept of closures to
// return a bound function. myBind "receives a function and a context object as arguments.
//   Then it returns a new function, which, when called, will call the original function using apply."



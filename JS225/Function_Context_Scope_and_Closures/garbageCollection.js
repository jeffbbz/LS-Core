function makeArrays() {
  let array = [];

  return () => {
    array.push('');
    return array;
  };
}

const pushIt = makeArrays();
pushIt();
// more code

// No. anytime `pushIt` is called it will reference the array variable in its closure and every time
// it is called, it returns a pointer to the array referenced by array variable.
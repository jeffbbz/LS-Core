const franchise = {
  name: 'How to Train Your Dragon',
  allMovies() {
    return [1, 2, 3].map(function(number) {
      return `${this.name} ${number}`;
    });
  },
};

console.log(franchise.allMovies());

// Expected Return Value
// [
//   'How to Train Your Dragon 1',
//   'How to Train Your Dragon 2',
//   'How to Train Your Dragon 3'
// ]

// Actual return value
// [ 'undefined 1', 'undefined 2', 'undefined 3' ]
//
// Nested functions do not take on the context of the function they are nested inside. Additionally,
//   functions passed as arguments lose thier context. Therefore even though
// the execution context of allMovies is the franchise object, the context of the anonymous function passed to map
// has a context of the global object which does not define name and therefore this.name will resolve to
// undefined.

// Fixed 1 with saving this of allMovies to local variable which will be available lexically to functions:

const franchise = {
  name: 'How to Train Your Dragon',
  allMovies() {
    let self = this;
    return [1, 2, 3].map(function(number) {
      return `${self.name} ${number}`;
    });
  },
};

console.log(franchise.allMovies());

// Fixed 2 using an arrow function which uniquely determines its this value lexically:

const franchise = {
  name: 'How to Train Your Dragon',
  allMovies() {
    return [1, 2, 3].map(number => `${this.name} ${number}`);
  },
};

console.log(franchise.allMovies());

// Fixed 3 passing in the optional thisArg to map:

const franchise = {
  name: 'How to Train Your Dragon',
  allMovies() {
    return [1, 2, 3].map(function(number) {
      return `${this.name} ${number}`;
    }, this);
  },
};

console.log(franchise.allMovies());
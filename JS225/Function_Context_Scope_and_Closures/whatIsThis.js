"use strict";

const person = {
  firstName: 'Rick ',
  lastName: 'Sanchez',
  fullName: this.firstName + this.lastName,
};

console.log(person.fullName); // NaN

// This code will log NaN because anywhere outside of a function (even inside an object literal) this will resolve to global object which does not
// define firstName or lastName, so our fullName results in undefined + undefined which will evaluate to
// Nan.


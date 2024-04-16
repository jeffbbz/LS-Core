// A grocery store uses a JavaScript function to calculate discounts on various items.
// They are testing out various percentage discounts but are getting unexpected results.
// Go over the code, and identify the reason why they aren't getting the expected discounted prices from the function.
// Then, modify the code so that it produces the correct results.

const item = {
  name: 'Foo',
  description: 'Fusce consequat dui est, semper.',
  price: 50,
  quantity: 100,
  discount(percent) {
    let discountedPrice = this.price;
    const discount = this.price * percent / 100;
    discountedPrice -= discount;

    return discountedPrice;
  },
};

console.log(item.discount(20));  // should return 40
// actually returns 40
console.log(item.discount(50));  // should return 25
// actually returns 20
console.log(item.discount(25));  // should return 37.5
// actually returns 15

// The reason why it was not working initially is due to object mutability. As initially written, each time we
// invoke the discount method, we are modifying the price property value. This is why the first call works, but the subsequent
// calls do not. In order to fix this, instead of modifying the price property value of the item, we can assign a method
// local variable to that value, then re-assign that local variable to the desired value and return that.
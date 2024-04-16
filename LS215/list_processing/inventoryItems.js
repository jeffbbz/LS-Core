/*

Write a function that takes two arguments, an inventory item ID and a list of transactions, and returns an array containing only the transactions for the specified inventory item.


### Goal

given a number and an array of transaction objects, return an array of only the objects that have the id value of the given number

### Rules

INPUT: integer and array of objects
OUTPUT: array of objects
- array of objects contains objects that have three key-value pairs: id-number, movement-in/out, and quantity-number
- number argument will be a valid integer from the range found in the objects of the array

### Algorithm
1. Iterate over the array checking if each object has an id value of the given integer
2. If it does, select it in an array to be return else don't
3. return filter array

*/

function transactionsFor(idNum, transactions) {
  return transactions.filter(transaction => transaction.id === idNum)
}

// with Object Destructing

function transactionsFor2(idNum, transactions) {
  return transactions.filter(({id}) => id === idNum)
}

const transactions = [ { id: 101, movement: 'in',  quantity:  5 },
  { id: 105, movement: 'in',  quantity: 10 },
  { id: 102, movement: 'out', quantity: 17 },
  { id: 101, movement: 'in',  quantity: 12 },
  { id: 103, movement: 'out', quantity: 15 },
  { id: 102, movement: 'out', quantity: 15 },
  { id: 105, movement: 'in',  quantity: 25 },
  { id: 101, movement: 'out', quantity: 18 },
  { id: 102, movement: 'in',  quantity: 22 },
  { id: 103, movement: 'out', quantity: 15 }, ];

console.log(transactionsFor(101, transactions));
// returns
// [ { id: 101, movement: "in",  quantity:  5 },
//   { id: 101, movement: "in",  quantity: 12 },
//   { id: 101, movement: "out", quantity: 18 }, ]

console.log(transactionsFor2(101, transactions));
// returns
// [ { id: 101, movement: "in",  quantity:  5 },
//   { id: 101, movement: "in",  quantity: 12 },
//   { id: 101, movement: "out", quantity: 18 }, ]
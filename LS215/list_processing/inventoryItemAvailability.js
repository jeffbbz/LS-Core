

// with for each and object destructuring

function isItemAvailable(idNum, transactions) {
  let amount = 0;
  transactionsFor(idNum, transactions).forEach(({movement, quantity}) => {
    if (movement === 'in') amount += quantity;
    if (movement === 'out') amount -= quantity;
  });

  return amount > 0;
}

// with reduce and object destructuring

function isItemAvailable2(idNum, transactions) {
  let amount = transactionsFor(idNum, transactions).reduce((amount, {movement, quantity}) => {
    if (movement === 'in') return amount + quantity;
    if (movement === 'out') return amount - quantity;
  }, 0);

  return amount > 0;
}

function transactionsFor(idNum, transactions) {
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

console.log(isItemAvailable(101, transactions));     // false
console.log(isItemAvailable(105, transactions));     // true

console.log(isItemAvailable2(101, transactions));     // false
console.log(isItemAvailable2(105, transactions));     // true
function invoiceTotal(amount1, amount2, amount3, ...amount4) {
  return amount1 + amount2 + amount3 + amount4.reduce((acc, num) => acc + num, 0);
}

console.log(invoiceTotal(20, 30, 40, 50));          // works as expected
console.log(invoiceTotal(20, 30, 40, 50, 40, 40));  // does not work; how can you make it work?

function invoiceTotal2(...amount) {
  return amount.reduce((acc, num) => acc + num, 0);
}

console.log(invoiceTotal2(20, 30, 40, 50));          // works as expected
console.log(invoiceTotal2(20, 30, 40, 50, 40, 40));  // does not work; how can you make it work?
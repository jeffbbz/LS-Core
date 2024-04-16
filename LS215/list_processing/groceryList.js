/*
Write a function that takes a grocery list in a two-dimensional array and returns a one-dimensional array. Each element in the grocery list contains a fruit name and a number that represents the desired quantity of that fruit. The output array is such that each fruit name appears the number of times equal to its desired quantity.

In the example below, we want to buy 3 apples, 1 orange, and 2 bananas. Thus, we return an array that contains 3 apples, 1 orange, and 2 bananas.

### Goal

given a nested array of sub arrays which contain a string and a number each, return a new 1-d array which contains the strings repeated number of times

### Rules
INPUT: a 2d array of sub arrays with a string and a number
OUTPUT: a 1d array of strings
- input will always be a 2d array
- input subarrays are always a string and a number
- numbers are positive integers greater than 0

### Examples and Test Cases

buyFruit([['apple', 3], ['orange', 1], ['banana', 2]]);
// returns ["apple", "apple", "apple", "orange", "banana", "banana"]

### Algorithm
1. Iterate over the outer array and map each inner array element to its string repeated integer number of times
  - create a new array of integer size and fill with the string
2. flatten the arrays and return the 1d array of all elements

*/

function buyFruit(list) {
  return list.flatMap(item => new Array(item[1]).fill(item[0]));
}

// function buyFruit(list) {
//   let result = list.flatMap(item => (item[0] + ' ').repeat(item[1]).split(' '));
//
//   return result.filter(element => element !== '');
// }

console.log(buyFruit([['apple', 3], ['orange', 1], ['banana', 2]]));
// returns ["apple", "apple", "apple", "orange", "banana", "banana"]
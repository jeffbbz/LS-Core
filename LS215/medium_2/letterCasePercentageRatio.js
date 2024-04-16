/*

Write a function that takes a string and returns an object containing the following three properties:

    the percentage of characters in the string that are lowercase letters
    the percentage of characters that are uppercase letters
    the percentage of characters that are neither

You may assume that the string will always contain at least one character.

### GOAL

given a string of chars, return an object whose keys are lowercase, uppercase, and neither, and whose values are a string rep float percentage of that key in the string.

### RULES
INPUT: a string of chars
OUTPUT: an object
- string will have at least one char
- if no chars of a type, value if "0.00"
- float number has two decimal places .00
- white space and numbers counts as a neither char
- counting upper, counting lower, counting else

### Initial Thoughts

- Create and Object
- Find the percentage of chars to string
  - Find the Counts of the three types of chars
  - Find the count of all chars
  - divide the count of each char type by all chars
  - multiply by 100

  'AbCd +Ef'
  8 chars
  3 upper
  3 lower
  2 other

- format percent correctly
  - 37.5.toFixed(2) this adds the extra zero and converts to string
- add percent to object
- return object

### Algorithm
FIND THE COUNT OF CHARS TO OBJECT
1. Create a count object to hold the counts of chars
2. Iterate over the chars in the string
  - if char tests to upper
    - increment upper by 1
  - if char tests to lower
    - increment lower by 1
  - else increment neither by 1
FIND PERCENTAGES
3. Declare a var to the length of the string
4. Divicde the count of each char by the length of the string and multply by 100
FORMAT PERCENTAGES
5. Use toFixed to format the percentage
UPDATE OBJECT
6. replace the proper val of hte obj with the given percentage
7 Return the object

*/

function letterPercentages(string) {
  let counts = charCount(string)
  let totalCount = string.length;

  Object.keys(counts).forEach(key => {
    counts[key] = percentage(counts[key], totalCount);
  });

  return counts;
}

function percentage(number, total) {
  return (number / total * 100).toFixed(2);
}

function charCount(string) {
  let counts = { lowercase: 0, uppercase: 0, neither: 0 };
  for (let idx = 0; idx < string.length; idx += 1) {
    if (/[A-Z]/.test(string[idx])) {
      counts.uppercase += 1;
    } else if (/[a-z]/.test(string[idx])) {
      counts.lowercase += 1;
    } else {
      counts.neither += 1;
    }
  }

  return counts;
}

console.log(letterPercentages('abCdef 123'));
// { lowercase: "50.00", uppercase: "10.00", neither: "40.00" }

console.log(letterPercentages('AbCd +Ef'));
// { lowercase: "37.50", uppercase: "37.50", neither: "25.00" }

console.log(letterPercentages('123'));
// { lowercase: "0.00", uppercase: "0.00", neither: "100.00" }
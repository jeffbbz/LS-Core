const PROMPTS = 3;
const SCORES = [];

function promptScores() {
  let score;
  while (SCORES.length < PROMPTS) {
    score = prompt('Enter score 1:');
    SCORES.push(Number(score));
  }
}

function calcAverage(numbers) {
  let sum = numbers.reduce((accum, element) => accum + element, 0);
  return sum / PROMPTS;
}

function calcGrade() {
  let average = calcAverage(SCORES);

  if (average >= 90) {
    return "A" ;
  } else if (average >= 70) {
    return "B";
  } else if (average >= 50) {
    return "C";
  } else {
    return "F";
  }
}

promptScores();
let letterGrade = calcGrade();
console.log(`Based on the average of your ${PROMPTS} scores your letter grade is ${letterGrade}.`);

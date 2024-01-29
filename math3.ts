import * as readlineSync from 'readline-sync';

console.log("Hello, What is your name?");
const name = readlineSync.question('');

console.log(`Hi ${name} thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!`);
console.log("If you get the math wrong you start over!!");

// Question 1
const math1 = parseInt(readlineSync.question('What is 1+1? '));
if (math1 === 2) {
  console.log("Thats right");
} else {
  console.log("Wrong");
  process.exit(1);
}

// Question 2
const math2 = parseInt(readlineSync.question('What is 2+2? '));
if (math2 === 4) {
  console.log("Thats right");
  // Continue with other questions...
} else {
  console.log("Wrong");
  process.exit(1);
}

import * as readlineSync from 'readline-sync';

function getRandomNumber(): number {
    return Math.floor(Math.random() * 10);
}

function getRandomOperator(): string {
    const operators: string[] = ['+', '-', '*', '/'];
    return operators[Math.floor(Math.random() * operators.length)];
}

function askQuestion(): boolean {
    const num1 = getRandomNumber();
    const num2 = getRandomNumber();
    const operator = getRandomOperator();
    const result = eval(`${num1} ${operator} ${num2}`);

    console.log(`What is ${num1} ${operator} ${num2}?`);
    const answer = parseInt(readlineSync.question('> '));

    if (answer === result) {
        console.log('Thats right');
        return true;  // Correct
    } else {
        console.log('Wrong');
        return false;  // Incorrect
    }
}

function startQuiz() {
    console.log('Hello, What is your name?');
    const name = readlineSync.question('> ');

    console.log(`Hi ${name} thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!`);
    console.log('If you get the math wrong you start over!!');

    // Continue asking questions until the user provides an incorrect answer
    while (askQuestion()) {
        // Continue with other questions...
    }

    console.log('Oops! You provided an incorrect answer. Better luck next time!');
}

startQuiz();

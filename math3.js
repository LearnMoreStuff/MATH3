const readline = require('readline');

function getRandomNumber() {
    return Math.floor(Math.random() * 10);
}

function getRandomOperator() {
    const operators = ['+', '-', '*', '/'];
    return operators[Math.floor(Math.random() * operators.length)];
}

function askQuestion() {
    const num1 = getRandomNumber();
    const num2 = getRandomNumber();
    const operator = getRandomOperator();
    const result = eval(`${num1} ${operator} ${num2}`);

    console.log(`What is ${num1} ${operator} ${num2}?`);

    return new Promise(resolve => {
        const rl = readline.createInterface({
            input: process.stdin,
            output: process.stdout
        });

        rl.question('> ', answer => {
            if (parseInt(answer) === result) {
                console.log('Thats right');
                resolve(true);  // Correct
            } else {
                console.log('Wrong');
                resolve(false);  // Incorrect
            }
            rl.close();
        });
    });
}

async function startQuiz() {
    console.log('Hello, What is your name?');
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    rl.question('> ', name => {
        console.log(`Hi ${name} thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!`);
        setTimeout(async () => {
            console.log('If you get the math wrong you start over!!');
            await askQuestion();
            rl.close();
        }, 1000);
    });
}

startQuiz();



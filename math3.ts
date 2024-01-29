import * as readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("Hi, thank you for getting MATH3 we hope you enjoy the new and improved MATH!!!");
setTimeout(() => {
  console.log("If you get the math wrong you start over!!");
}, 2000);

setTimeout(() => {
  askQuestion("What is the value of random?", 2);
}, 6000);

function askQuestion(question: string, correctAnswer: number) {
  rl.question(question + '\n', (math) => {
    if (parseInt(math) === correctAnswer) {
      console.log("That's right");
      nextQuestion();
    } else {
      console.log("Wrong");
      process.exit(1);
    }
  });
}

function nextQuestion() {
  const questions = [
    { question: "What is 2+2", answer: 4 },
    { question: "What is 3+3", answer: 6 },
    { question: "What is 4+4", answer: 8 },
    { question: "What is 5+5", answer: 10 },
    { question: "What is 6+6", answer: 12 },
    { question: "What is 7+7", answer: 14 },
    { question: "What is 8+8", answer: 16 },
    { question: "What is 9+9", answer: 18 },
    { question: "What is 10+10", answer: 20 },
    { question: "What is ", answer: 20 } // This question seems incomplete
  ];

  let currentQuestionIndex = 0;

  const askNext = () => {
    if (currentQuestionIndex < questions.length) {
      const q = questions[currentQuestionIndex];
      askQuestion(q.question, q.answer);
      currentQuestionIndex++;
    } else {
      console.log("All questions answered correctly!");
      rl.close();
    }
  };

  askNext();
}


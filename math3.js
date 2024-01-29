const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("Hello, What is your name?");

rl.question("", function(name) {
  console.log(`Hi ${name} thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!`);

  setTimeout(function() {
    console.log("If you get the math wrong you start over!!");
    setTimeout(askQuestion, 1000);
  }, 1000);

  function askQuestion() {
    rl.question("What is 1+1? ", function(math) {
      if (parseInt(math) === 2) {
        console.log("Thats right");
        setTimeout(askQuestion2, 2000);
      } else {
        console.log("Wrong");
        process.exit(1);
      }
    });
  }

  function askQuestion2() {
    rl.question("What is 2+2? ", function(math) {
      if (parseInt(math) === 4) {
        console.log("Thats right");
        // Continue with other questions...
        rl.close();
      } else {
        console.log("Wrong");
        process.exit(1);
      }
    });
  }

});


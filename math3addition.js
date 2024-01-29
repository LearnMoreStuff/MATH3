console.log("Hi " + name + " thank you for getting MATH3 we hope you enjoy the new and improved MATH!!!");
setTimeout(() => {
  console.log("If you get the math wrong you start over!!");
}, 2000);

setTimeout(() => {
  console.log("What is " + random);
  const math = prompt("Enter your answer:");
  if (math === "2") {
    console.log("That's right");
  } else {
    console.log("Wrong");
    process.exit(1);
  }
}, 4000);

setTimeout(() => {
  console.log("What is 2+2");
  const math = prompt("Enter your answer:");
  if (math === "4") {
    console.log("That's right");
  } else {
    console.log("Wrong");
    process.exit(1);
  }
}, 6000);

// ... Repeat the pattern for the other math questions ...

setTimeout(() => {
  console.log("What is 10+10");
  const math = prompt("Enter your answer:");
  if (math === "20") {
    console.log("That's right");
  } else {
    console.log("Wrong");
  }
}, 18000);

setTimeout(() => {
  console.log("What is ");
  const math = prompt("Enter your answer:");
  if (math === "20") {
    console.log("That's right");
  } else {
    console.log("Wrong");
  }
}, 20000);


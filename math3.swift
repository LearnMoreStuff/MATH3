import Foundation

func getRandomNumber() -> Int {
    return Int.random(in: 0...9)
}

func getRandomOperator() -> Character {
    let operators: [Character] = ["+", "-", "*", "/"]
    return operators.randomElement()!
}

func askQuestion() -> Bool {
    let num1 = getRandomNumber()
    let num2 = getRandomNumber()
    let operator = getRandomOperator()
    let result: Int

    switch operator {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        result = num1 / num2
    default:
        fatalError("Unexpected operator")
    }

    print("What is \(num1) \(operator) \(num2)?")
    guard let answer = readLine(), let userAnswer = Int(answer) else {
        return false
    }

    if userAnswer == result {
        print("Thats right")
        return true  // Correct
    } else {
        print("Wrong")
        return false  // Incorrect
    }
}

func startQuiz() {
    print("Hello, What is your name?")
    guard let name = readLine() else {
        return
    }

    print("Hi \(name) thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!")
    sleep(1)

    print("If you get the math wrong you start over!!")
    sleep(1)

    // Continue asking questions until the user provides an incorrect answer
    while askQuestion() {
        // Continue with other questions...
    }

    print("Oops! You provided an incorrect answer. Better luck next time!")
}

startQuiz()

import Foundation

func askQuestion(prompt: String, correctAnswer: Int) {
    print(prompt, terminator: "")
    if let response = readLine(), let userAnswer = Int(response), userAnswer == correctAnswer {
        print("Thats right")
    } else {
        print("Wrong")
        exit(1)
    }
}

print("Hello, What is your name?")
if let name = readLine() {
    print("Hi \(name) thank you for getting MATH3. We hope you enjoy the new and improved MATH!!!")
    sleep(1)

    print("If you get the math wrong you start over!!")
    sleep(1)

    askQuestion(prompt: "What is 1+1? ", correctAnswer: 2)
    sleep(2)

    askQuestion(prompt: "What is 2+2? ", correctAnswer: 4)
    // Continue with other questions...
}

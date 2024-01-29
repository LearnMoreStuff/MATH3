package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())

	for {
		// Generate two random numbers
		num1 := rand.Intn(100) // Random number between 0 and 99
		num2 := rand.Intn(100) // Random number between 0 and 99

		// Choose a random math operation
		operation := rand.Intn(4) // Random number between 0 and 3
		var result int
		var op string

		switch operation {
		case 0:
			op = "+"
			result = num1 + num2
		case 1:
			op = "-"
			result = num1 - num2
		case 2:
			op = "*"
			result = num1 * num2
		case 3:
			op = "/"
			// Avoid division by zero
			if num2 == 0 {
				num2 = 1
			}
			result = num1 / num2
		}

		// Ask the question
		fmt.Printf("What is %d %s %d? ", num1, op, num2)

		// Get user's answer
		var answer int
		_, err := fmt.Scan(&answer)
		if err != nil {
			fmt.Println("Please enter a valid number.")
			continue
		}

		// Check the answer
		if answer == result {
			fmt.Println("Correct!")
		} else {
			fmt.Printf("Incorrect. The correct answer is %d.\n", result)
		}

		// Ask if the user wants to continue
		fmt.Print("Do you want to continue? (yes/no): ")
		var response string
		fmt.Scan(&response)
		if response != "yes" {
			break
		}
	}
}

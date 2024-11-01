#!/bin/bash

# Number of questions
QUESTIONS=5
# Counter for correct answers
CORRECT=0

echo "Welcome to the MATH3!"
echo "You will be asked $QUESTIONS addition questions with single-digit numbers."

# Loop for each question
for ((i=1; i<=QUESTIONS; i++))
do
    # Generate two random single-digit numbers (0-9)
    num1=$(( RANDOM % 10 ))
    num2=$(( RANDOM % 10 ))

    # Calculate the correct answer
    correct_answer=$(( num1 + num2 ))

    # Ask the question
    echo -n "Question $i: What is $num1 + $num2? "
    read user_answer

    # Check the user's answer
    if [ "$user_answer" -eq "$correct_answer" ]; then
        echo "Correct!"
        (( CORRECT++ ))
    else
        echo "Incorrect. The correct answer is $correct_answer."
    fi
done

# Display the final score
echo "Quiz complete! You got $CORRECT out of $QUESTIONS correct."
echo "Thank you for playing MATH3!"

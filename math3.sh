#!/bin/bash

# Let's define our questions and answers
questions=("What's 1 + 1?" "What's 2 + 2?" "What's 3 + 3?" "What's 4 + 4?" "What's 5 + 5?"
           "What's 6 + 6?" "What's 7 + 7?" "What's 8 + 8?" "What's 9 + 9?" "What's 10 + 10?" "What's the capital of France?")
answers=(2 4 6 8 10 12 14 16 18 20 "Paris")

# Function to check answer and give response
check_answer() {
    local user_answer="$1"
    local correct_answer="${answers[$question_number]}"
    
    if [[ $user_answer == $correct_answer ]]; then
        if [[ $correct_answer == "Paris" ]]; then
            echo "Très bien! That's correct."
        else
            echo "Jolly good! That's right."
        fi
        ((score++))
    elif [[ $user_answer =~ ^[0-9]+$ ]]; then
        echo "Oh dear, that's not quite right."
    else
        echo "Oh dear, that doesn't seem to be a valid answer."
    fi
}

# Initialize score
score=0

# Shuffle questions and answers using Fisher-Yates algorithm
for (( i=${#questions[@]}-1; i>0; i-- )); do
    j=$((RANDOM % (i+1)))
    temp=${questions[i]}
    questions[i]=${questions[j]}
    questions[j]=$temp
    
    temp=${answers[i]}
    answers[i]=${answers[j]}
    answers[j]=$temp
done

# Loop through each question
for ((question_number = 0; question_number < ${#questions[@]}; question_number++)); do
    # Ask the question and get the user's answer
    read -p "${questions[$question_number]} " user_answer
    
    # Check if the answer is correct
    check_answer "$user_answer"
done

# Display final score
echo "Your score is $score out of ${#questions[@]}."

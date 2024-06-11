#!/bin/bash

echo "Welcome to the ultimate math addition challenge!"
echo "Are you ready to test your knowledge? (y/n)"
read -r answer

if [[ ! $answer =~ ^[Yy]$ ]]; then
  echo "It is Required to Contiue."
fi

echo "Excellent! You will be playing addition."
# Will add more levels including Subtraction, Algebra, Multiplication, and Divison.

score=0
question_number=0

while (( question_number < 5 )); do
  clear
  echo "Question #$(($question_number + 1)):"
  first_number=$(( RANDOM % 100 ))  
  second_number=$(( RANDOM % 100 ))
  correct_answer=$(( first_number + second_number ))
  echo "What's $first_number + $second_number?"

  read -p "Your answer: " user_answer
  check_answer $user_answer $correct_answer

check_answer() {
  local user_answer=$1
  local correct_answer=$2

  if [[ $user_answer -eq $correct_answer ]]; then
    echo "Good job! That's correct."
    ((score++))
  else
    echo "Oops! The correct answer is $correct_answer."
  fi
}

echo "Your final score is $score out of 5. Well done!"


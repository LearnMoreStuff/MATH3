#!/bin/bash

echo "Welcome to the ultimate math addition challenge!"
echo "Are you ready to test your knowledge? (y/n)"
read -r answer

if [[ ! $answer =~ ^[Yy]$ ]]; then
  echo "Okay, maybe next time!  See you later!"
  exit 0
fi

echo "Excellent! Today's theme is..."
theme="Math"  # Fixed theme as Math for random math questions

score=0
question_number=0

while (( question_number < 5 )); do
  clear
  echo "Question #$(($question_number + 1)):"
  first_number=$(( RANDOM % 10000 ))  
  second_number=$(( RANDOM % 10000 ))
  correct_answer=$(( first_number + second_number ))
  echo "What's $first_number + $second_number?"

  read -p "Your answer: " user_answer
  check_answer $user_answer $correct_answer

  ((question_number++))
done

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

echo "Would you like to play again? (y/n)"
read -r answer

if [[ $answer =~ ^[Yy]$ ]]; then
  # Reset score and question counter for a new round
  score=0
  question_number=0
  main
else
  echo "Thanks for playing! Until next time!"
fi#!/bin/bash

echo "Welcome to the ultimate math and trivia challenge!"
echo "Are you ready to test your knowledge? (y/n)"
read -r answer

if [[ ! $answer =~ ^[Yy]$ ]]; then
  echo "Okay, maybe next time!  See you later!"
  exit 0
fi

echo "Excellent! Today's theme is..."
# Randomly pick a theme (e.g., history, science, animals) and adjust questions accordingly.
themes=("Math" "History" "Science" "Animals")
theme=${themes[RANDOM % ${#themes[@]}]}  # Random selection
echo "  $theme"

questions=("What's 1 + 1?" "What's 2 + 2?" "What's 3 + 3?" "What's 4 + 4?" "What's 5 + 5?")  # Adjust for different themes
answers=(2 4 6 8 10)  # Adjust for different themes
difficulty="Easy"  # Placeholder for now (can add difficulty levels)

score=0
question_number=0

while (( question_number < ${#questions[@]} )); do
  clear
  echo "Question #$(($question_number + 1)) of ${#questions[@]}:"
  echo "${questions[$question_number]}"

  # Optionally, add visual elements or sound effects for an engaging experience.

  read -p "Your answer: " user_answer
  "$user_answer"
  ((question_number++))
done

check_answer() {
  local user_answer="$1"
  local correct_answer="${answers[$question_number]}"

  if [[ $user_answer == $correct_answer ]]; then
    if [[ $correct_answer == "Paris" ]]; then
      echo "Bravo! You've conquered the City of Lights!"
    else
      case $theme in
        "Math")
          echo "Spot on! Your mathematical prowess is undeniable!"
          ;;
        "History")
          echo "Excellent! You've aced your historical knowledge!"
          ;;
        "Science")
          echo "Brilliant! You're a true science whiz!"
          ;;
        "Animals")
          echo "Fantastic! You're the animal kingdom expert!"
          ;;
      esac
    fi
    ((score++))
  elif [[ $user_answer =~ ^[0-9]+$ ]]; then
    case $theme in
      "Math")
        echo "Hmm, that's close, but let's try another approach."
        ;;
      # Add cases for other themes with theme-specific hints
    esac
  else
    echo "Let's give it another shot. There might be a hidden clue in the question."
  fi
}

score_weighting=1  # Adjust based on difficulty (can add difficulty-based weighting)
echo "Your final score is $(($score * $score_weighting)) out of ${(score_weighting * ${#questions[@]})}"

case $theme in
  "Math")
    echo "Congratulations! You've sharpened your math skills!"
    ;;
  "History")
    echo "Bravo! You've expanded your historical knowledge!"
    ;;
  "Science")
    echo "Fantastic! You've strengthened your scientific understanding!"
    ;;
  "Animals")
    echo "Excellent! You've proven your animal expertise!"
    ;;
esac

echo "Would you like to play again? (y/n)"
read -r answer

if [[ $answer =~ ^[Yy]$ ]]; then
  # Reset score and variables for a new round
  score=0
  question_number=0
  main  # Call the main function to restart the game
else
  echo "Thanks for playing! Until next time!"
fi

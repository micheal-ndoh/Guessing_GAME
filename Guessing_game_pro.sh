#!/bin/bash

# Title
TITLE="WELCOME TO ICE ULTIMATE GAME"
figlet "$TITLE"
# inittializing WIN/LOSS
WIN=0
LOSS=0
# Function to display game modes
usage() {
  echo "Select a game mode:"
  echo "0. EASY (1-10)"
  echo "1. NORMAL (1-25)"
  echo "2. HARD (1-50)"
  echo "3. SUPER HARD (1-100)"
  echo "4. WIN TWICE AND RECEIVE 1K (1-1000)"
}

# Function to generate random number
generate_random_number() {
  local max_number=$1
  echo $((RANDOM % max_number + 1))
}

# Function to play the game
play_game() {
  local mode=$1
  local max_number
  case $mode in
    0) max_number=10 ;;
    1) max_number=25 ;;
    2) max_number=50 ;;
    3) max_number=100 ;;
    4) max_number=1000 ;;
  esac

  local rand_number=$(generate_random_number $max_number)
  local attempts=0
  local max_attempts=3

  while [ $attempts -lt $max_attempts ]; do
    read -p "Guess the number (1-$max_number): " guess_number
    ((attempts++))

    if [ "$rand_number" -eq "$guess_number" ]; then
      echo "Congratulations, You Won!"
	WIN=$((WIN + 1))
      return
    elif [ "$rand_number" -gt "$guess_number" ]; then
      echo "You missed! The random number is greater than $guess_number"
        LOSS=$((LOSS + 1))  
 else
      echo "You missed! The random number is lesser than $guess_number"
	LOSS=$((LOSS + 1))   
 fi
  done

  echo "You lose, the number was $rand_number"
}

# Main game loop
while true; do
  usage
  read -p "Enter your choice: " mode

  case $mode in
    0|1|2|3|4) play_game $mode ;;
    *) echo "Invalid choice. Please try again." ;;
  esac

  read -p "Play again? (y/n): " play_again
  if [ "$play_again" != "y" ]; then
    break
  fi
done

    


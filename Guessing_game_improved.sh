#!/bin/bash

TITLE="WELCOME_TO_THE_ULTIMATE_GAME"
figlet "$TITLE"

guessing_game() {
  rand_number=$((RANDOM % $1))
  guess_numbers=($2 $3 $4)

  usage() {
    echo "0. EASY"
    echo "1. NORMAL"
    echo "2. HARD"
    echo "3. SUPER HARD"
    echo "4. Win twice and receive 1k Mode"
  }

  todo() {
    read -p "Enter MODE " MODE
    case $MODE in
      0)
        echo "EASY MODE"
        for i in {1..3}; do
          guess_number=${guess_numbers[$i]}
          if [ "$rand_number" -eq "$guess_number" ]; then
            echo "Congratulations, You Won!"
            return
          elif [ "$rand_number" -gt "$guess_number" ]; then
            echo "You missed! The random number is greater than $guess_number"
          else
            echo "You missed! The random number is lesser than $guess_number"
          fi
          echo "Please try again!"
        done
        echo "You lose, the number was $rand_number"
        read -p "Enter r to restart: " r
        if [ "$r" = 'r' ]; then
          usage
          todo
        fi
        ;;
      1)
        echo "NORMAL selected"
        for i in {1..3}; do
          guess_number=${guess_numbers[$i]}
          if [ "$rand_number" -eq "$guess_number" ]; then
            echo "Congratulations, You Won!"
            return
          elif [ "$rand_number" -gt "$guess_number" ]; then
            echo "You missed! The random number is greater than $guess_number"
          else
            echo "You missed! The random number is lesser than $guess_number"
          fi
          echo "Please try again!"
        done
        echo "You lose, the number was $rand_number"
        read -p "Enter r to restart: " r
        if [ "$r" = 'r' ]; then
          usage
          todo
        fi
        ;;
      2)
        echo "HARD selected"
        for i in {1..3}; do
          guess_number=${guess_numbers[$i]}
          if [ "$rand_number" -eq "$guess_number" ]; then
            echo "Congratulations, You Won!"
            return
          elif [ "$rand_number" -gt "$guess_number" ]; then
            echo "You missed! The random number is greater than $guess_number"
          else
            echo "You missed! The random number is lesser than $guess_number"
          fi
          echo "Please try again!"
        done
        echo "You lose, the number was $rand_number"
        read -p "Enter r to restart: " r
        if [ "$r" = 'r' ]; then
          usage
          todo
        fi
        ;;
      3)
        echo "SUPER HARD"
        for i in {1..3}; do
          guess_number=${guess_numbers[$i]}
          if [ "$rand_number" -eq "$guess_number" ]; then
            echo "Congratulations, You Won!"
            return
          elif [ "$rand_number" -gt "$guess_number" ]; then
            echo "You missed! The random number is greater than $guess_number"
          else
            echo "You missed! The random number is lesser than $guess_number"
          fi
          echo "Please try again!"
        done
        echo "You lose, the number was $rand_number"
        read -p "Enter r to restart: " r
        if [ "$r" = 'r' ]; then
          usage
          todo
        fi
        ;;
      4)
        echo "Win twice and receive 1k Mode"
        for i in {1..3}; do
          guess_number=${guess_numbers[$i]}
          if [ "$rand_number" -eq "$guess_number" ]; then
            echo "Congratulations, You Won!"
            return
          elif [ "$rand_number" -gt "$guess_number" ]; then
            echo "You missed! The random number is greater than $guess_number"
          else
            echo "You missed! The random number is lesser than $guess_number"
          fi
          echo "Please try again!"
        done
        echo "You lose, the number was $rand_number"
        read -p "Enter r to restart: " r
        if [ "$r" = 'r' ]; then
          usage
          todo
        fi
        ;;
    esac
  }

  usage
  todo
}

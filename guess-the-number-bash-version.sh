#!/bin/bash

# Generate random number between 1 and 100
number=$((1 + RANDOM % 100))

# Initialize guess variable
guess=0

echo "Welcome to Guess the Number!"

# Loop until guess matches the number
while [ $guess -ne $number ]
do
  # Ask user for guess
  read -p "Guess a number between 1 and 100: " guess
  
  # Check if guess is valid
  if ! [[ "$guess" =~ ^[0-9]+$ ]]
  then
    echo "Invalid input. Please enter a number between 1 and 100."
    continue
  fi
  
  # Check if guess is too high or too low
  if [ $guess -lt $number ]
  then
    echo "Too low. Try again."
  elif [ $guess -gt $number ]
  then
    echo "Too high. Try again."
  fi
done

echo "Congratulations! You guessed the number."

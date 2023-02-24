#!/bin/bash

# Guess The Number game, written by Feriman (feriman.com)
# https://github.com/Feriman22/guess-the-number

# Generate a random number between 1 and 100
number=$((1 + RANDOM % 100))

# Print the welcome text
echo "Welcome to Guess the Number!"

# Start the game
while true; do
        read -p "Guess a number between 1 and 100: " guess

        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
                echo "Invalid input. Please enter a number between 1 and 100."
        elif (( guess < number )); then
                echo "Too low. Try again."
        elif (( guess > number )); then
                echo "Too high. Try again."
        else
                echo "Congratulations! You guessed the number."
                break
        fi
done

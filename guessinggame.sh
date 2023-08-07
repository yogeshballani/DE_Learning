#!/bin/bash

 
function get_file_count {
    local count=$(ls -1 | wc -l)
    echo "$count"
}

 

files=$(get_file_count)

 

echo "Welcome to the Guessing Game!"
echo "Can you guess the number of files in the current directory?"

 

while true; do
    read -p "Enter your guess: " guess

 

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
    elif [[ "$guess" -eq "$files" ]]; then
        echo "Congratulations! You guessed correctly! There are $files files in the current directory."
        break
    elif [[ "$guess" -lt "$files" ]]; then
        echo "Too low. Try again!"
    else
        echo "Too high. Try again!"
    fi
done
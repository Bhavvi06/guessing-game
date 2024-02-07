#!/bin/bash

function guess_files {
    local correct_guess=$(ls -1A | wc -l)
    local user_guess

    echo "How many files are in the current directory? Enter your guess:"
    read user_guess

    while [[ $user_guess -ne $correct_guess ]]
    do
        if [[ $user_guess -lt $correct_guess ]]
        then
            echo "Your guess was too low. Try again:"
        else
            echo "Your guess was too high. Try again:"
        fi
        read user_guess
    done

    echo "Congratulations! Your guess is correct."
}

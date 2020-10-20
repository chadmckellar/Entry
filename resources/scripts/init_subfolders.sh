#!/bin/bash
# A basic script that takes in a name, and makes a directory with a readme.md for the given name.

echo "Enter a name for the new directory and readme. Type 'done' when finished."

while true; do

    read answer

    if [[ "done" == "$answer" ]]; then
        break
    elif [[ -e "$answer" ]]; then
        echo "File/Folder already exits. Try again."
    else
        mkdir "$answer"
        touch "./$answer/$answer.md"
    fi

done
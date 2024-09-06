#!/bin/bash

# Prompt the user to enter their favorite programming language
read -p "Enter your favorite programming language: " language

# Convert the input to lowercase to handle case sensitivity
language=$(echo "$language" | tr '[:upper:]' '[:lower:]')

# Decision-making using if-elif-else statements
if [ "$language" == "python" ]; then
    echo "Great choice! Python is known for its simplicity and versatility."
elif [ "$language" == "javascript" ]; then
    echo "JavaScript is essential for web development!"
elif [ "$language" == "java" ]; then
    echo "Java is widely used for enterprise applications."
elif [ "$language" == "c++" ]; then
    echo "C++ is powerful for system-level programming."
else
    echo "Interesting choice! $language is a great language too!"
fi

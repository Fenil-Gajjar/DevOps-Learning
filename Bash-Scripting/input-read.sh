#!/bin/bash

# Prompt the user for their username
read -p "Enter your username: " username

# Prompt the user for their password (input will not be displayed)
read -s -p "Enter your password: " password
echo # Move to a new line after password input

# Prompt the user for their skill in the IT industry
read -p "Enter your skill in the IT industry: " skill

# Simulate a login check (you could add your own logic for actual authentication here)
echo "Login successful! Welcome, $username."
echo "Your skill in the IT industry is: $skill."

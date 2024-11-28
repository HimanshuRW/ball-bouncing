#!/bin/bash

# Define the animation speed
speed=0.1

# Define text message
message="Hello Advitiya!"

# Clear the screen at the beginning
clear

# Loop through the message to animate each character
for ((i=0; i<${#message}; i++)); do
    # Move the cursor to the beginning
    echo -ne "\033[H"
    # Print the first i+1 characters with color changes
    for ((j=0; j<=i; j++)); do
        # Change text color randomly for a fun effect
        color=$((RANDOM % 7 + 31))  # Generate a random color (31 to 37)
        echo -ne "\033[${color}m${message:j:1}"  # Print each character with the color
    done
    # Reset to default color after each iteration
    echo -ne "\033[0m"
    # Pause for a moment
    sleep $speed
done

# Add some more fun - make the message appear letter by letter
echo -ne "\n\n"
for ((i=0; i<${#message}; i++)); do
    echo -ne "\033[H"
    # Display the message fully one character at a time
    for ((j=0; j<=i; j++)); do
        color=$((RANDOM % 7 + 31))
        echo -ne "\033[${color}m${message:j:1}"
    done
    sleep $speed
done

# Add an "explosion" effect at the end
echo -ne "\n\n"
for ((i=0; i<5; i++)); do
    clear
    for ((j=0; j<${#message}; j++)); do
        color=$((RANDOM % 7 + 31))
        echo -ne "\033[${color}m${message:j:1}"
        sleep 0.05
    done
    sleep 0.2
done

# Final explosion and reset to default colors
clear
echo -ne "\033[1;37m"
echo "HELLO ADVITIYA!"
echo -ne "\033[0m"

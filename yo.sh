#!/bin/bash

# Define the width of the terminal (adjust as needed)
width=30

# Loop forever to create the animation
while true; do
  # Ball moving right
  for ((i=0; i<width; i++)); do
    clear                          # Clear the screen
    printf "%*sO\n" $i ""          # Print the ball at the current position
    sleep 0.05                     # Pause for 50ms
  done
  
  # Ball moving left
  for ((i=width; i>0; i--)); do
    clear                          # Clear the screen
    printf "%*sO\n" $i ""          # Print the ball at the current position
    sleep 0.05                     # Pause for 50ms
  done
done

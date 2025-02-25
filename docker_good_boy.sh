#!/bin/bash

VERSION="0.1.1"
# Function definitions
SIT='docker-sit() { 
  docker compose pause "$@"; 
}'
UP='docker-up() { 
  docker compose up -d "$@"; 
}'
DOWN='docker-down() { 
  if [ -n "$1" ]; then 
    docker stop "$1" && docker rm -f "$1"; 
  else 
    docker compose down; 
  fi 
}'
ROLLOVER="alias docker-rollover='docker-compose down && docker-compose build --no-cache && docker-compose up -d'"
DGB="alias docker-good-boy='docker ps && echo \"woof\"'"
DGBS="alias docker-gb='docker ps && echo \"woof\"'"

# Check if ~/.zshrc exists
if [ -f ~/.zshrc ]; then
  # Remove existing lines that match the functions or aliases
  sed -i '' "/docker-sit/d" ~/.zshrc
  sed -i '' "/docker-up/d" ~/.zshrc
  sed -i '' "/docker-down/d" ~/.zshrc
  sed -i '' "/docker-rollover/d" ~/.zshrc
  sed -i '' "/docker-good-boy/d" ~/.zshrc
  sed -i '' "/docker-gb/d" ~/.zshrc

  # Append functions and aliases to ~/.zshrc
  echo "$SIT" >> ~/.zshrc
  echo "$UP" >> ~/.zshrc
  echo "$DOWN" >> ~/.zshrc
  echo "$ROLLOVER" >> ~/.zshrc
  echo "$DGBS" >> ~/.zshrc
  echo "$DGB" >> ~/.zshrc
  echo "Installed docker_good_boy successfully! Version: $VERSION"
else
  echo "~/.zshrc not found!"
fi

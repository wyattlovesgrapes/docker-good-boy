#!/bin/bash

# Tricks
SIT="alias docker-sit='docker compose pause'"
UP="alias docker-up='docker compose up -d'"
DOWN="alias docker-down='docker compose down'"
ROLLOVER="alias docker-rollover='docker-compose down && docker-compose build --no-cache && docker-compose up -d'"
DGB="alias docker-good-boy='docker ps && echo \"woof\"'"
DGBS="alias docker-gb='docker ps && echo \"woof\"'"

# Check if ~/.zshrc exists
if [ -f ~/.zshrc ]; then
  # Check if aliases are already in .zshrc
  if ! grep -q "$SIT" ~/.zshrc && \
     ! grep -q "$UP" ~/.zshrc && \
     ! grep -q "$DOWN" ~/.zshrc && \
     ! grep -q "$ROLLOVER" ~/.zshrc && \
     ! grep -q "$DGBS" ~/.zshrc && \
     ! grep -q "$DGB" ~/.zshrc; then

    # Append aliases to ~/.zshrc
    echo "$SIT" >> ~/.zshrc
    echo "$UP" >> ~/.zshrc
    echo "$DOWN" >> ~/.zshrc
    echo "$ROLLOVER" >> ~/.zshrc
    echo "$DGBS" >> ~/.zshrc
    echo "$DGB" >> ~/.zshrc
    echo "Aliases added to ~/.zshrc successfully!"
  else
    echo "Aliases already exist in ~/.zshrc!"
  fi
else
  echo "~/.zshrc not found!"
fi
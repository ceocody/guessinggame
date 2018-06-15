#!/bin/bash
  
read -p "Guess how many files are in this directory." GUESS
FILES=`ls | wc -l`

while true;do

  if [ $GUESS -lt $FILES ]; then
    echo "Sorry, that's too little."
  read -p "What's your next guess?" GUESS
  fi
  if [ $GUESS -gt $FILES ]; then
    echo  "Sorry, that's too much."
  read -p "What's your next guess?" GUESS
  fi
  if [ $GUESS -eq $FILES ]; then
    echo "Congratulations!"
exit 0
  fi

done

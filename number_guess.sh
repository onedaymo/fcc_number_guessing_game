#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"

NUMBER=$(( RANDOM % 1000 + 1 ))
echo "Enter your username: "
read NAME

USERNAME=$($PSQL "SELECT username FROM users WHERE username='$NAME'")
if [[ $USERNAME ]]
then
  DATA=$($PSQL "SELECT * FROM users WHERE username='$NAME'")
  echo "$DATA" | while read USERNAME BAR PLAYED BAR BEST
  do
    echo Welcome back, $USERNAME! You have played $PLAYED games, and your best game took $BEST guesses.
  done
else
  echo Welcome, $NAME! It looks like this is your first time here.
  INSERT_RESULT=$($PSQL "INSERT INTO users(username, games_played, best_game) 
  VALUES('$NAME', 0, 10000)")
fi

COUNT=1
MAIN_MENU() {
  if [[ $1 ]]
  then 
    echo "$1"
  else
    echo Guess the secret number between 1 and 1000:
  fi
  read GUESS
  CHECK
}
 

CHECK() {
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    MAIN_MENU "That is not an integer, guess again:"
  else
    while (( $GUESS != $NUMBER ))
    do
      if (( $GUESS > $NUMBER ))
      then
        echo "It's lower than that, guess again:"
      else
        echo "It's higher than that, guess again:"
      fi
      read GUESS
      (( COUNT++ ))  
    done
  fi
  echo "You guessed it in $COUNT tries. The secret number was $NUMBER. Nice job!"
  
  DATA=$($PSQL "SELECT * FROM users WHERE username='$NAME'")
  echo "$DATA" | while read USERNAME BAR PLAYED BAR BEST
  do
    UPDATE_PLAYED=$($PSQL "UPDATE users SET games_played=$PLAYED + 1 WHERE username='$USERNAME'")
  if (( $COUNT < $BEST ))
  then
    UPDATE_BEST=$($PSQL "UPDATE users SET best_game=$COUNT WHERE username='$USERNAME'")
  fi
  done 
}

MAIN_MENU

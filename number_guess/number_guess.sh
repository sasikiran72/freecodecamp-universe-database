#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET=$(( $RANDOM % 1000 + 1 ))
NO_OF_GUESSES=0

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]
then
  ADD_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT count(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(no_of_guesses) FROM games WHERE user_id=$USER_ID")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS

while true
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read GUESS
  else
    NO_OF_GUESSES=$(( NO_OF_GUESSES + 1 ))

    if (( GUESS < SECRET ))
    then
      echo "It's higher than that, guess again:"
      read GUESS
    elif (( GUESS > SECRET ))
    then
      echo "It's lower than that, guess again:"
      read GUESS
    else
      ADD_GAME=$($PSQL "INSERT INTO games(user_id,no_of_guesses) VALUES($USER_ID,$NO_OF_GUESSES)")
      echo "You guessed it in $NO_OF_GUESSES tries. The secret number was $SECRET. Nice job!"
      break
    fi
  fi
done
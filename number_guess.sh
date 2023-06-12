#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

NUMBER=$(( RANDOM % 1000 ))
GUESS=1

# add name
echo "Enter your username:"
read NAME

USER_ID=$($PSQL "SELECT user_id FROM userdata WHERE username = '$NAME'")

if [[ -z $USER_ID ]]
then
  INPUT_USER=$($PSQL "INSERT INTO userdata(username) VALUES('$NAME')")
  echo "\nWelcome, $NAME! It looks like this is your first time here."
else
  GAMES_P=$($PSQL "SELECT count(game_id) FROM games FULL JOIN userdata USING(user_id) WHERE user_id = $USER_ID")
  GAMES_B=$($PSQL "SELECT MIN(no_guess) FROM games WHERE user_id = $USER_ID")
  echo "Welcome back, $NAME! You have played $GAMES_P games, and your best game took $GAMES_B guesses."
fi

echo -e "\nGuess the secret number between 1 and 1000:"

while read INPUT
do 
  if [[ ! $INPUT =~ ^[0-9]+$ ]]
  then
  echo -n "That is not an integer, guess again:" 
  else   
    if [[ $INPUT = $NUMBER ]]
    then
    break;
    else
      if [[ $INPUT < $NUMBER ]]
      then
        echo -n "It's higher than that, guess again:"

      elif [[ $INPUT > $NUMBER ]]
      then
        echo -n "It's lower than that, guess again:"
      fi
    fi    
  fi
  #no_guess
  GUESS=$(( $GUESS + 1))
done

# add vlues into games table
echo "You guessed it in $GUESS tries. The secret number was $NUMBER. Nice job!"
USER_ID=$($PSQL "SELECT user_id FROM userdata WHERE username = '$NAME'")
INSERT_GAMES=$($PSQL "INSERT INTO games(user_id, no_guess) VALUES($USER_ID, $GUESS)")  

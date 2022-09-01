#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Delete tables if they exist
echo "$($PSQL "TRUNCATE TABLE teams, games;")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    # Check if winning team is in the database
    WINNING_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER';")

    # If winning team is not found
    if [[ -z $WINNING_TEAM_NAME ]]
    then
      # Insert winning team to database
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
      # If inserted succesfully
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]] 
      then
        echo Inserted into teams, $WINNER
      fi
    fi
    
    # Check if opponent team is in the database
    OPPONENT_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT';")

    # If opponent team is not found
    if [[ -z $OPPONENT_TEAM_NAME ]]
    then
      # Insert opponent team to database
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]] 
      then
        echo Inserted into teams, $OPPONENT
      fi
    fi
  fi
done 

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    # Get the winning and opponent team ids
    WINNING_TEAM=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    OPPONENT_TEAM=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

    # Insert game result to database
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNING_TEAM, $OPPONENT_TEAM, $WINNER_GOALS, $OPPONENT_GOALS);")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]] 
    then
      echo Inserted into games: year: $YEAR, round: $ROUND, winner: $WINNER, opponent: $OPPONENT
    fi
  fi
done 

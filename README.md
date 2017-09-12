# Tournament
Udacity Full Stack Developer Program Project 2

## Description

A Python module and PostgreSQL database that keeps track of players and matches in a swiss style tournament.

## Files

**tournament.sql**

The sql file with all of the necessary psql commands to create the database with corresponding tables and views.

**tournament.py**

The python file with functions necessary to correctly query the database.

**tournament_test.py**

This is the test file from which you will run to see if all of the functions are correctly querying the database.


##Instructions

1. Download the necessary files for the project [here](https://github.com/chasechaisson/tournament/archive/master.zip)

2. Start up your virtual machine by running ```vagrant up``` in the terminal command line

3. Make sure you are logged in to the virtual machine by then running ```vagrant ssh```

3. The current working directory of the virtual machine should be where the files for this project have been downloaded and unzipped.

4. You can now run psql by typing ```psql``` in the command line. 

5. Import the tournament.sql file into psql by typing ```\i tournament.sql``` 
This should correctly setup your database with the working tables and views.

6. Everything should now be setup. You can exit psql by pressing control-d. 

7. Now let's run the test file tournament_test.py by typing ```python tournament_test.py``` in the command line.

##Results

If everything runs smoothly, you should get a return statement in the terminal stating:

```
1. countPlayers() returns 0 after initial deletePlayers() execution.
2. countPlayers() returns 1 after one player is registered.
3. countPlayers() returns 2 after two players are registered.
4. countPlayers() returns zero after registered players are deleted.
5. Player records successfully deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After match deletion, player standings are properly reset.
9. Matches are properly deleted.
10. After one match, players with one win are properly paired.
Success!  All tests pass!
```
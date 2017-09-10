-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;

\c tournament;


CREATE TABLE IF NOT EXISTS players (id serial PRIMARY KEY, name text);

CREATE TABLE IF NOT EXISTS matches (id serial PRIMARY KEY, winner INT references players(id), loser INT references players(id));




CREATE VIEW winnings AS
	SELECT players.id AS player, count(matches.winner) AS wins 
	FROM players LEFT JOIN matches 
	ON players.id = matches.winner 
	GROUP BY players.id, matches.winner 
	ORDER BY wins DESC



CREATE VIEW matches_played AS
	SELECT players.id AS player, count(matches) AS matches
	FROM players LEFT JOIN matches
	ON (players.id = matches.winner) OR (players.id = matches.loser)
	GROUP BY players.id
	ORDER BY players.id ASC

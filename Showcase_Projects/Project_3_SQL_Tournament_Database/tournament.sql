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

CREATE TABLE PLAYERS (
	Player_ID serial primary key,
	Player_Name text
	);

CREATE TABLE MATCHES (
	Match_ID serial primary key,
	Player_ID_Winner integer references PLAYERS (Player_ID),
	Player_ID_Loser integer references PLAYERS (Player_ID)
	);

CREATE VIEW Player_Wins as 
select Player_ID_Winner, count(MATCHES.Player_ID_Winner) as wins  
from MATCHES 
group by Player_ID_Winner
order by Player_ID_Winner;

CREATE VIEW Player_Losses as 
select Player_ID_Loser, count(MATCHES.Player_ID_Loser) as losses  
from MATCHES 
group by Player_ID_Loser
order by Player_ID_Loser;

CREATE VIEW Combine_Player_ID_Wins_Losses as
select PLAYERS.Player_ID, PLAYERS.Player_Name, Player_Wins.wins, Player_Losses.losses
from PLAYERS
left join Player_Wins
on  Player_Wins.Player_ID_Winner = PLAYERS.Player_ID
left join Player_Losses
on Player_Losses.Player_ID_Loser = PLAYERS.Player_ID;




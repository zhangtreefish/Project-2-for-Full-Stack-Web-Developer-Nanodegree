/* Table definitions for the tournament project.

 Put your SQL 'create table' statements in this file; also 'create view'
 statements if you choose to use it.

 You can write comments in this file by starting them with two dashes, like
 these lines here. */


--CREATE DATABASE IF NOT EXISTS tournament;
DROP database tournament;
CREATE database tournament;
--i\ tournament;
CREATE TABLE IF NOT EXISTS players (
	name TEXT,
	id SERIAL PRIMARY KEY
);
CREATE TABLE IF NOT EXISTS matches (
	player1 int,
	player2 int,
	winer int,
	match_id SERIAL PRIMARY KEY
);
INSERT INTO players(name) VALUES('Ted Joahnson');
INSERT INTO players(name) VALUES('Rylie Salman');
INSERT INTO players(name) VALUES('Rory Henders');
INSERT INTO players(name) VALUES('Hannah Jones');

CREATE VIEW v_show_winner as
	select *  from players left join matches
	on players.id=matches.player1 or players.id=matches.player2;
	#select id,winer from v_show_winner where winer is null;:gets the non-winners
	#select id,count(winer)from v_show_winner where winer=id group by id;:gets the winners

--multiple players are inserted through the sql commands here
--INSERT INTO players(name) VALUES('Ted Joahnson'),('Rylie Salman'),('Rory Henders'),('Hannah Jones');

--additional players are alternatively inserted through registerPlayers([]) in tournament.py
--INSERT INTO players(name) VALUES('Luca Travino');
--INSERT INTO players(name) VALUES('Andy Cai');
--INSERT INTO players(name) VALUES('Mia Smith');
--INSERT INTO players(name) VALUES('Xiameng Nyugen');
--INSERT INTO players(name) VALUES('Susie Lao'),('Lu Xiao'),('Cindy Woo'),('Dana Farber');
--INSERT INTO players(name) VALUES('Eric Zig');
--INSERT INTO players(name) VALUES('Max McCall');
--INSERT INTO players(name) VALUES('Alex Rodriguez');
--INSERT INTO players(name) VALUES('Josh Pink');

INSERT INTO matches VALUES(1,2,1);
INSERT INTO matches VALUES(3,2,2);

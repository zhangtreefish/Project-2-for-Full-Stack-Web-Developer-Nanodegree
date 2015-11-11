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

CREATE VIEW v_players_and_matches AS
	select * from players left join matches
	on players.id=matches.player1 or players.id=matches.player2;

CREATE VIEW v_win_count AS
	select
		id,
		count(winer) as win
	from v_players_and_matches
	WHERE winer=id
	group by id;

CREATE VIEW v_total_count AS
	select
		id,
	    count(match_id) as total
	from v_players_and_matches
	group by id;

CREATE VIEW v_player_standing AS
	SELECT
		p.id,
        p.name,
        CASE WHEN w.win is null THEN 0 ELSE w.win END AS wins,
        t.total AS matches
    FROM players p LEFT JOIN v_win_count w
    ON p.id=w.id
    JOIN v_total_count t
    ON p.id=t.id
    ORDER BY wins DESC;

INSERT INTO matches VALUES(1,2,1);
INSERT INTO matches VALUES(3,2,2);
INSERT INTO matches VALUES(3,1,1);

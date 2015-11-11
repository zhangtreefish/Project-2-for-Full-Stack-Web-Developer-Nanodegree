/* Table definitions for the tournament project.

 Put your SQL 'create table' statements in this file; also 'create view'
 statements if you choose to use it.

 You can write comments in this file by starting them with two dashes, like
 these lines here. */


--As PhilipCoach demonstrated, DROP followed by CREATE allows fresh start
DROP database tournament;
CREATE database tournament;

CREATE TABLE IF NOT EXISTS players (
    name TEXT,
    id SERIAL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS matches (
    player1 int,
    player2 int,
    winner int,
    match_id SERIAL PRIMARY KEY
);

--use %s to defend against sql injection hack TODO
INSERT INTO players(name) VALUES ('Ted Joahnson');
INSERT INTO players(name) VALUES ('Rylie Salman');
INSERT INTO players(name) VALUES ('Rory Henders');
INSERT INTO players(name) VALUES ('Hannah Jones');

--this view is the master view
CREATE VIEW v_players_and_matches AS
    SELECT * FROM players LEFT JOIN matches
    ON players.id=matches.player1 OR players.id=matches.player2;

--this view lists only those who has at least one win
CREATE VIEW v_win_count AS
    SELECT
        id,
        count(winner) AS win
    FROM v_players_and_matches
    WHERE winner=id
    GROUP BY id;

--this view shows the total matches played by each player
CREATE VIEW v_total_count AS
    SELECT
        id,
        count(match_id) AS total
    FROM v_players_and_matches
    GROUP BY id;

--this is the player standing view
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

INSERT INTO matches(player1,player2,winner) VALUES (1,2,1);
INSERT INTO matches(player1,player2,winner) VALUES (3,2,2);
INSERT INTO matches(player1,player2,winner) VALUES (3,1,1);

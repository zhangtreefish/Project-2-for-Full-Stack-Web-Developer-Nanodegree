-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


--CREATED DATABASE tournament in psql
CREATE TABLE IF NOT EXISTS players (name TEXT,
                     id SERIAL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS matches (match_id SERIAL PRIMARY KEY,
						match_date DATE,
						player1 TEXT,
						player2 TEXT,
						winner TEXT);
--ps = ['Ted','Rylie','Rory','Hannah','Luca']
--for p in ps:
	--INSERT INTO players(fullname) VALUES(%s);(p,)
	--INSERT INTO players(fullname) VALUES(p);

INSERT INTO players(name) VALUES('Ted'),('Rylie'),('Rory'),('Hannah');
--INSERT INTO players(name) VALUES('Rylie');
--INSERT INTO players(name) VALUES('Rory');
--INSERT INTO players(name) VALUES('Hannah');

INSERT INTO players(name) VALUES('Luca');
INSERT INTO players(name) VALUES('Andy');
INSERT INTO players(name) VALUES('Mia');
INSERT INTO players(name) VALUES('Xianmei');

INSERT INTO players(name) VALUES('Susie'),('Lu'),('Cindy'),('Dana');
--INSERT INTO players(name) VALUES('Lu');
--INSERT INTO players(name) VALUES('Cindy');
--INSERT INTO players(name) VALUES('Dana');

INSERT INTO players(name) VALUES('Eric');
INSERT INTO players(name) VALUES('Max');
INSERT INTO players(name) VALUES('Alex');
INSERT INTO players(name) VALUES('Josh');



INSERT INTO matches VALUES(1,'2015-11-02','Eric Zheng','McCall','Player1');
INSERT INTO matches VALUES(2,'2015-10-30','Lucas Zheng','Eric Zheng','Player1');





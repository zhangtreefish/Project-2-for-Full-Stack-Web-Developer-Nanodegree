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

INSERT INTO players(name) VALUES('Ted Joahnson'),('Rylie Salman'),('Rory Henders'),('Hannah Jones');
--INSERT INTO players(name) VALUES('Rylie');
--INSERT INTO players(name) VALUES('Rory');
--INSERT INTO players(name) VALUES('Hannah');

INSERT INTO players(name) VALUES('Luca Travino');
INSERT INTO players(name) VALUES('Andy Cai');
INSERT INTO players(name) VALUES('Mia Smith');
INSERT INTO players(name) VALUES('Xiameng Nyugen');

INSERT INTO players(name) VALUES('Susie Lao'),('Lu Xiao'),('Cindy Woo'),('Dana Farber');
--INSERT INTO players(name) VALUES('Lu');
--INSERT INTO players(name) VALUES('Cindy');
--INSERT INTO players(name) VALUES('Dana');

INSERT INTO players(name) VALUES('Eric Zig');
INSERT INTO players(name) VALUES('Max McCall');
INSERT INTO players(name) VALUES('Alex Rodriguez');
INSERT INTO players(name) VALUES('Josh Pink');



INSERT INTO matches VALUES(1,'2015-11-02','Eric Zig','Max McCall','Eric Zig');
INSERT INTO matches VALUES(2,'2015-10-30','Mia Smith','Eric Zig','Eric Zig');





mysql;
CREATE DATABASE football_club;
USE football_club;

CREATE TABLE players (playerID INT, player_name VARCHAR(50), player_age INT);

SHOW tables;
+-------------------------+
| Tables_in_football_club |
+-------------------------+
| players                 |
+-------------------------+
1 row in set (0.00 sec)


CREATE TABLE games(gameID INT, gameDate DATE, score INT);

SHOW tables;
+-------------------------+
| Tables_in_football_club |
+-------------------------+
| games                   |
| players                 |
+-------------------------+
2 rows in set (0.00 sec)

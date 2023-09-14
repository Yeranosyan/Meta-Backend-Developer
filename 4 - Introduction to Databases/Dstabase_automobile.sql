mysql;
CREATE DATABASE automobile;

USE bookshop;
CREATE TABLE vehicle( vehicleID varchar(10), ownerID varchar(10), plateNumber varchar(10), phoneNumber INT);

Show tables;
Show columns FROM vehicle;

CREATE TABLE Owner(ownerID VARCHAR(10), ownerName VARCHAR(50), ownerdrerss  VARCHAR(255), PRIMARY KEY (ownerID));

Show tables;
Show columns FROM vehicle;

ALTER TABLE vehicle ADD FOREIGN KEY (ownerID) REFERENCES owner (ownerID);

Show columns from vehicle;

--  - PRI comes from primary; this means it’s a primary key.
--  - UNI comes from unique; this means it’s a unique key.
--  - MUL comes from multiple. If the key is MUL, it means that the related column is permitted to contain the same value in multiple cells of that column.
mysql;
CREATE DATABASE bookshop;
USE bookshop;
CREATE TABLE customers (customerID INT, customerName VARCHAR (50), customerAddress VARCHAR(100));

+--------------------+
| Tables_in_bookshop |
+--------------------+
| customers          |
+--------------------+


INSERT INTO `customers` (`customerID`, `customerName`, `customerAddress`) VALUES
(1, 'Jack', '115 Old street Belfast'),
(2, 'James', '24 Carlson Rd London'),
(4, 'Maria', '5 Fredrik Rd, Bedford'),
(5, 'Jade', '10 Copland Ave Portsmouth '),
(6, 'Yasmine', '15 Fredrik Rd, Bedford'),
(3, 'Jimmy', '110 Copland Ave Portsmouth');

SELECT * FROM customers;
+------------+--------------+----------------------------+
| customerID | customerName | customerAddress            |
+------------+--------------+----------------------------+
|          1 | Jack         | 115 Old street Belfast     |
|          2 | James        | 24 Carlson Rd London       |
|          4 | Maria        | 5 Fredrik Rd, Bedford      |
|          5 | Jade         | 10 Copland Ave Portsmouth  |
|          6 | Yasmine      | 15 Fredrik Rd, Bedford     |
|          3 | Jimmy        | 110 Copland Ave Portsmouth |
+------------+--------------+----------------------------+

DELETE FROM customers WHERE customerID = 3;
DELETE FROM customers WHERE customerID = 5;

SELECT * FROM customers;
+------------+--------------+------------------------+
| customerID | customerName | customerAddress        |
+------------+--------------+------------------------+
|          1 | Jack         | 115 Old street Belfast |
|          2 | James        | 24 Carlson Rd London   |
|          4 | Maria        | 5 Fredrik Rd, Bedford  |
|          6 | Yasmine      | 15 Fredrik Rd, Bedford |
+------------+--------------+------------------------+
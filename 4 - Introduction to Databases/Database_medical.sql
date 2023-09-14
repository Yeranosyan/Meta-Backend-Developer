'''
Data normalization
The normalization process aims to minimize data duplications, avoid errors during data modifications and simplify data queries from the database. The three fundamental normalization forms are known as:

First Normal Form (1NF) - These rules enforce data atomicity and eliminate unnecessary repeating groups of data in database tables.
Second Normal Form (2NF)
Third Normal Form (3NF)
'''
mysql;

CREATE DATABASE medical;

CREATE TABLE Surgery  (DoctorID VARCHAR(10), DoctorName VARCHAR(50), Region VARCHAR(20), PatientID VARCHAR(10), PatientName VARCHAR(50), SurgeryNumber INT, Council  VARCHAR(20), Postcode VARCHAR(10), SlotID VARCHAR(5), TotalCost Decimal);

'''
First Normal Form
To simplify the data structure of the surgery table, let’s apply the first normal form rules to enforce the data atomicity rule and eliminate unnecessary repeating groups of data. The data atomicity rule means that you can only have one single instance value of the column attribute in any cell of the table.

The atomicity problem only exists in the columns of data related to the patients. Therefore, it is important to create a new table for patient data to fix this. In other words, you can organize all data related to the patient entity in one separate table, where each cell of any column contains only one single instance of data as depicted in the following example.
'''

CREATE TABLE Patient  (PatientID VARCHAR(10) NOT NULL, PatientName VARCHAR(50), SlotID VARCHAR(10) NOT NULL, TotalCost Decimal,  CONSTRAINT PK_Patient PRIMARY KEY (PatientID, SlotID));

CREATE TABLE Doctor  (DoctorID VARCHAR(10), DoctorName VARCHAR(50), PRIMARY KEY (DoctorID));

CREATE TABLE Surgery  (SurgeryNumber INT NOT NULL, Region VARCHAR(20), Council  VARCHAR(20), Postcode VARCHAR(10), PRIMARY KEY(SurgeryNumber));

'''
Second Normal Form:
In the second normal form, you need to avoid any partial dependency relationships between data. Partial dependency refers to tables with a composite primary key. Namely a key that consists of a combination of two or more columns, where a non-key attribute value depends only on one part of the composite key.

Since the patient table is the only one that includes a composite primary key, you only need to look at the following table.
'''

CREATE TABLE Patient  (PatientID VARCHAR(10) NOT NULL, PatientName, VARCHAR(50), PRIMARY KEY (PatientID));

CREATE TABLE Appointments  (AppointmentID INT NOT NULL, SlotID, VARCHAR(10),  TotalCost Decimal, PRIMARY KEY (AppointmentID));

'''
Third Normal Form:
For a relation in a database to be in the third normal form, it must already be in the second normal form (2NF). In addition, it must have no transitive dependency. This means that any non-key attribute in the surgery table may not be functionally dependent on another non-key attribute in the same table. In the surgery table, the postcode and the council are non-key attributes, and the postcode is dependent on the council. Therefore, if you change the council value, you must also change the postcode. This is called transitive dependency, which is not allowed in the third normal form.
'''

CREATE TABLE Location  (SurgeryNumber INT NOT NULL, Postcode VARCHAR(10), PRIMARY KEY (SurgeryNumber));

CREATE TABLE Council  (Council VARCHAR(20) NOT NULL, Region VARCHAR(20), PRIMARY KEY (Council));
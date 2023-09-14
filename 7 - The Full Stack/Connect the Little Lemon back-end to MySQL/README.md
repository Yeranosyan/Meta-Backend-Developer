## Connect the Little Lemon back-end to MySQL Gagik Yeranosyan 2023

# Using command :

- mysql -u root -p
- Create a database with the name reservations with the command below:
  CREATE DATABASE reservations;

- SHOW DATABASES;
  mysql> SHOW DATABASES;
  +--------------------+
  | Database |
  +--------------------+
  | information_schema |
  | menu_db |
  | menu_items |
  | mysql |
  | performance_schema |
  | reservations |
  | sys |
  +--------------------+
  7 rows in set (0.06 sec)

- exit (exit fr0m mySQL)
- cd myproject
- pipenv shell

- mysql -u root -p
- CREATE USER 'admindjango'@'localhost' IDENTIFIED BY 'employee@123!';
- GRANT ALL ON _._ TO 'admindjango'@'localhost';
  Note: Privileges assigned using GRANT command do not require the flush privileges but it is usually a good practice to run this command while you are using variable commands for changing privileges and reloading the server and grant tables containing information about user accounts.
- FLUSH PRIVILEGES;
- exit (exit from mySQL)

- INSTALLED_APPS configuration add ('myapp',)
- configuration labeled DATABASES and update the configuration

- pipenv install mysqlclient
- python3 manage.py makemigrations
- python3 manage.py migrate
- mysql -u root -p
- use reservations;

- show tables;
  mysql> show tables;
  +----------------------------+
  | Tables_in_reservations |
  +----------------------------+
  | auth_group |
  | auth_group_permissions |
  | auth_permission |
  | auth_user |
  | auth_user_groups |
  | auth_user_user_permissions |
  | django_admin_log |
  | django_content_type |
  | django_migrations |
  | django_session |
  | myapp_booking |
  +----------------------------+
  11 rows in set (0.00 sec)

- describe myapp_booking;
  mysql> describe myapp_booking;
  +------------------+--------------+------+-----+---------+----------------+
  | Field | Type | Null | Key | Default | Extra |
  +------------------+--------------+------+-----+---------+----------------+
  | id | bigint | NO | PRI | NULL | auto_increment |
  | first_name | varchar(200) | NO | | NULL | |
  | reservation_date | date | NO | | NULL | |
  | reservation_slot | smallint | NO | | NULL | |
  +------------------+--------------+------+-----+---------+----------------+
  4 rows in set (0.05 sec)

- exit

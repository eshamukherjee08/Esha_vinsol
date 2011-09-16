Last login: Fri Sep 16 12:22:31 on ttys001
You have new mail.
ritu-kamthans-macbook:~ richa$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.1.58 MySQL Community Server (GPL)

Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
This software comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to modify and redistribute it under the GPL v2 license

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database vtapp_ex5;
Query OK, 1 row affected (0.00 sec)

mysql> use database vtapp_ex5;
ERROR 1049 (42000): Unknown database 'database'
mysql> use vtapp_ex5;
Database changed
mysql> create table testing_table
    -> (
    -> name varchar(20) not null,
    -> contact_name varchar(20) default null,
    -> roll_no varchar(11) default null
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> show table testing_table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'testing_table' at line 1
mysql> show columns from testing_table;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| name         | varchar(20) | NO   |     | NULL    |       |
| contact_name | varchar(20) | YES  |     | NULL    |       |
| roll_no      | varchar(11) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table testing_table drop column name;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show columns from testing_table;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| contact_name | varchar(20) | YES  |     | NULL    |       |
| roll_no      | varchar(11) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table testing_table change contact_name username varchar(20);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show columns from testing_table;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| username | varchar(20) | YES  |     | NULL    |       |
| roll_no  | varchar(11) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table testing_table add first_name char(20);
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table testing_table add last_name char(20);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show columns from testing_table;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| username   | varchar(20) | YES  |     | NULL    |       |
| roll_no    | varchar(11) | YES  |     | NULL    |       |
| first_name | char(20)    | YES  |     | NULL    |       |
| last_name  | char(20)    | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table testing_table change roll_no roll_no int(10);
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show columns from testing_table;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| username   | varchar(20) | YES  |     | NULL    |       |
| roll_no    | int(10)     | YES  |     | NULL    |       |
| first_name | char(20)    | YES  |     | NULL    |       |
| last_name  | char(20)    | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> 

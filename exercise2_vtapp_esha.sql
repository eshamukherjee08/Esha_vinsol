Last login: Fri Sep 16 12:41:51 on ttys000
You have new mail.
ritu-kamthans-macbook:~ richa$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.1.58 MySQL Community Server (GPL)

Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
This software comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to modify and redistribute it under the GPL v2 license

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database vtapp;
Query OK, 1 row affected (0.00 sec)

mysql> use vtapp;
Database changed
mysql> create user 'vtapp_user'@'localhost' identified by 'vinsol';
Query OK, 0 rows affected (0.00 sec)

mysql> grant usage on *.* to vtapp_user@localhost identified by 'vinsol';
Query OK, 0 rows affected (0.00 sec)

mysql> grant all privileges on vtapp.* to vtapp_user@localhost;
Query OK, 0 rows affected (0.00 sec)

mysql> 

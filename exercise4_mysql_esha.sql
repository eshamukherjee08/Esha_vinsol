Last login: Fri Sep 16 14:16:21 on ttys001
You have new mail.
ritu-kamthans-macbook:~ richa$ cd desktop
ritu-kamthans-macbook:desktop richa$ mysqldump -h localhost -u root -p vtapp_exercise > vtapp_exercise.sql
Enter password: 
ritu-kamthans-macbook:desktop richa$ mysqldump -h localhost -u root -p vtapp_exe5 > vtapp_exe5.sql
Enter password: 
mysqldump: Got error: 1049: Unknown database 'vtapp_exe5' when selecting the database
ritu-kamthans-macbook:desktop richa$ mysqldump -h localhost -u root -p vtapp_ex5 > vtapp_ex5.sql
Enter password: 
ritu-kamthans-macbook:desktop richa$ mysqldump -h localhost -u root -p vtapp > vtapp.sql
Enter password: 
ritu-kamthans-macbook:desktop richa$ cd ..
ritu-kamthans-macbook:~ richa$ mysql -u root -pEnter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 5.1.58 MySQL Community Server (GPL)

Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
This software comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to modify and redistribute it under the GPL v2 license

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database restore;
Query OK, 1 row affected (0.00 sec)

mysql> exit;
Bye
ritu-kamthans-macbook:~ richa$ cd desktop
ritu-kamthans-macbook:desktop richa$ mysql -u root -p restore < vtapp_exercise.sql
Enter password: 
ritu-kamthans-macbook:desktop richa$ mysql -u root -p restore < vtapp_ex5.sqlEnter password: 
ritu-kamthans-macbook:desktop richa$ mysql -u root -p restore < vtapp.sql
Enter password: 
ritu-kamthans-macbook:desktop richa$ 

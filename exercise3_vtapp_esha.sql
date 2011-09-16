Last login: Fri Sep 16 12:45:37 on ttys001
You have new mail.
ritu-kamthans-macbook:~ richa$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 6
Server version: 5.1.58 MySQL Community Server (GPL)

Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
This software comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to modify and redistribute it under the GPL v2 license

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use vtapp_exercise;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables from vtapp_exercise;
+--------------------------+
| Tables_in_vtapp_exercise |
+--------------------------+
| article                  |
| article_comm             |
| comment                  |
| exe3_vtapp               |
| temp                     |
| testing_table            |
| user                     |
| user_article             |
| user_comm                |
+--------------------------+
9 rows in set (0.00 sec)

mysql> show columns from article;
+----------+----------+------+-----+---------+----------------+
| Field    | Type     | Null | Key | Default | Extra          |
+----------+----------+------+-----+---------+----------------+
| a_id     | int(11)  | NO   | PRI | NULL    | auto_increment |
| a_contnt | longtext | YES  |     | NULL    |                |
| catagory | char(15) | NO   |     | NULL    |                |
| u_id     | int(11)  | NO   |     | NULL    |                |
+----------+----------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> select * from articles;
ERROR 1146 (42S02): Table 'vtapp_exercise.articles' doesn't exist
mysql> select * from article;
+------+----------------------------------------------------------------------+------------+------+
| a_id | a_contnt                                                             | catagory   | u_id |
+------+----------------------------------------------------------------------+------------+------+
|    1 | hello world!                                                         | fiction    |    5 |
|    2 | hello robot...wish me luck!                                          | sci-fi     |    4 |
|    3 | a quick brown fox jumps over the lazy dog.                           | literature |    3 |
|    4 | india is the largest democracy in the world.                         | social     |    2 |
|    5 | apple's new mac book pro air is the lightest notebook in market.     | technology |    1 |
|    6 | the english teacher is one of the greatest novel by r.k.narayan.     | fiction    |    2 |
|    7 | huge competion in market to launch 1st ever search engine optimizer. | technology |    3 |
|    8 | this is not happening.                                               | sci-fi     |    4 |
|    9 | got a new ipod..cool metallic blue!                                  | technology |    5 |
|   10 | this is all imaginary, just few random thoughts.                     | fiction    |    3 |
+------+----------------------------------------------------------------------+------------+------+
10 rows in set (0.00 sec)

mysql> show columns from user;
+-------+----------+------+-----+------------+----------------+
| Field | Type     | Null | Key | Default    | Extra          |
+-------+----------+------+-----+------------+----------------+
| u_id  | int(11)  | NO   | PRI | NULL       | auto_increment |
| uname | char(20) | YES  |     | enter name |                |
| utype | char(15) | NO   |     | normal     |                |
+-------+----------+------+-----+------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from user;
+------+---------+--------+
| u_id | uname   | utype  |
+------+---------+--------+
|    1 | harshit | normal |
|    2 | esha    | admin  |
|    3 | abhi    | normal |
|    4 | someya  | normal |
|    5 | nandini | admin  |
+------+---------+--------+
5 rows in set (0.00 sec)

mysql> show columns from comment;
+----------+----------+------+-----+---------+----------------+
| Field    | Type     | Null | Key | Default | Extra          |
+----------+----------+------+-----+---------+----------------+
| c_id     | int(11)  | NO   | PRI | NULL    | auto_increment |
| catagory | char(15) | NO   |     | NULL    |                |
+----------+----------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

mysql> select * from comment;
+------+-----------+
| c_id | catagory  |
+------+-----------+
|    1 | very bad  |
|    2 | bad       |
|    3 | good      |
|    4 | very good |
|    5 | excellent |
+------+-----------+
5 rows in set (0.00 sec)

mysql> show columns from article_comm;
+-------+----------+------+-----+---------+-------+
| Field | Type     | Null | Key | Default | Extra |
+-------+----------+------+-----+---------+-------+
| a_id  | int(11)  | NO   |     | NULL    |       |
| u_id  | int(11)  | NO   |     | NULL    |       |
| c_id  | int(11)  | YES  |     | NULL    |       |
| comm  | char(15) | YES  |     | NULL    |       |
+-------+----------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> select * from article_comm;
+------+------+------+-----------+
| a_id | u_id | c_id | comm      |
+------+------+------+-----------+
|    1 |    1 |    5 | excellent |
|    2 |    4 |    1 | very bad  |
|    2 |    3 |    2 | bad       |
|    2 |    2 |    2 | bad       |
|    3 |    1 |    5 | excellent |
|    4 |    2 |    4 | very good |
|    4 |    5 |    4 | very good |
|    5 |    3 |    2 | bad       |
|    5 |    2 |    4 | very good |
|    6 |    2 |    4 | very good |
|    7 |    3 |    4 | very good |
|    8 |    5 |    5 | excellent |
|    8 |    1 |    5 | excellent |
|    9 |    5 |    3 | good      |
|   10 |    3 |    3 | good      |
+------+------+------+-----------+
15 rows in set (0.00 sec)

mysql> show columns from user_article;
+----------+----------+------+-----+------------+-------+
| Field    | Type     | Null | Key | Default    | Extra |
+----------+----------+------+-----+------------+-------+
| a_id     | int(11)  | NO   | PRI | 0          |       |
| u_id     | int(11)  | NO   |     | 0          |       |
| uname    | char(20) | YES  |     | enter name |       |
| catagory | char(15) | NO   |     | NULL       |       |
+----------+----------+------+-----+------------+-------+
4 rows in set (0.01 sec)

mysql> select * from user_article;
+------+------+---------+------------+
| a_id | u_id | uname   | catagory   |
+------+------+---------+------------+
|    1 |    5 | nandini | fiction    |
|    2 |    4 | someya  | sci-fi     |
|    3 |    3 | abhi    | literature |
|    4 |    2 | esha    | social     |
|    5 |    1 | harshit | technology |
|    6 |    2 | esha    | fiction    |
|    7 |    3 | abhi    | technology |
|    8 |    4 | someya  | sci-fi     |
|    9 |    5 | nandini | technology |
|   10 |    3 | abhi    | fiction    |
+------+------+---------+------------+
10 rows in set (0.00 sec)

mysql> show columns from user_comm;
+--------+----------+------+-----+------------+-------+
| Field  | Type     | Null | Key | Default    | Extra |
+--------+----------+------+-----+------------+-------+
| a_id   | int(11)  | NO   |     | NULL       |       |
| u_id   | int(11)  | NO   |     | 0          |       |
| u_comm | char(20) | YES  |     | enter name |       |
| comm   | char(15) | YES  |     | NULL       |       |
+--------+----------+------+-----+------------+-------+
4 rows in set (0.00 sec)

mysql> select * from user_comm;
+------+------+---------+-----------+
| a_id | u_id | u_comm  | comm      |
+------+------+---------+-----------+
|    1 |    1 | harshit | excellent |
|    2 |    2 | esha    | bad       |
|    2 |    3 | abhi    | bad       |
|    2 |    4 | someya  | very bad  |
|    3 |    1 | harshit | excellent |
|    4 |    2 | esha    | very good |
|    4 |    5 | nandini | very good |
|    5 |    2 | esha    | very good |
|    5 |    3 | abhi    | bad       |
|    6 |    2 | esha    | very good |
|    7 |    3 | abhi    | very good |
|    8 |    1 | harshit | excellent |
|    8 |    5 | nandini | excellent |
|    9 |    5 | nandini | good      |
|   10 |    3 | abhi    | good      |
+------+------+---------+-----------+
15 rows in set (0.01 sec)

mysql> drop table temp;
Query OK, 0 rows affected (0.00 sec)

mysql> drop table testing_table;
Query OK, 0 rows affected (0.00 sec)

mysql> show tables from vtapp_exercise;
+--------------------------+
| Tables_in_vtapp_exercise |
+--------------------------+
| article                  |
| article_comm             |
| comment                  |
| exe3_vtapp               |
| user                     |
| user_article             |
| user_comm                |
+--------------------------+
7 rows in set (0.00 sec)

mysql> create table tempselect user_article.u_id, user_article.a_id, article
    ->  ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'user_article.u_id, user_article.a_id, article' at line 1
mysql> create table temp select user_article.u_id, user_article.a_id, article.a_contnt, article.catagory
    -> from user_articel left join article
    -> on user_article.a_id = article.a_id
    -> where user_article.u_id =3;
ERROR 1146 (42S02): Table 'vtapp_exercise.user_articel' doesn't exist
mysql> create table temp select user_article.u_id, user_article.a_id, article.a_contnt, article.catagory from user_article left join article on user_article.a_id = article.a_id where user_article.u_id =3;
Query OK, 3 rows affected (0.08 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from temp;
+------+------+----------------------------------------------------------------------+------------+
| u_id | a_id | a_contnt                                                             | catagory   |
+------+------+----------------------------------------------------------------------+------------+
|    3 |    3 | a quick brown fox jumps over the lazy dog.                           | literature |
|    3 |    7 | huge competion in market to launch 1st ever search engine optimizer. | technology |
|    3 |   10 | this is all imaginary, just few random thoughts.                     | fiction    |
+------+------+----------------------------------------------------------------------+------------+
3 rows in set (0.00 sec)

mysql> create table exe3_vtapp
    -> select temp.*,article_comm.comm
    -> from temp left join article_comm
    -> on temp.a_id = article_comm.a_id;
Query OK, 3 rows affected (0.08 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from exe3_vtapp;
+------+------+----------------------------------------------------------------------+------------+-----------+
| u_id | a_id | a_contnt                                                             | catagory   | comm      |
+------+------+----------------------------------------------------------------------+------------+-----------+
|    3 |    3 | a quick brown fox jumps over the lazy dog.                           | literature | excellent |
|    3 |    7 | huge competion in market to launch 1st ever search engine optimizer. | technology | very good |
|    3 |   10 | this is all imaginary, just few random thoughts.                     | fiction    | good      |
+------+------+----------------------------------------------------------------------+------------+-----------+
3 rows in set (0.00 sec)

mysql> 

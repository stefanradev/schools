/*
3. Insert
Add at least two records in each table
As a result SQL queries must be created
Write the queries from point 3 in a file called inserts.sql
*/

INSERT INTO Article_43 (created_on, password, published_on) VALUES
("2015-04-03 05:08:07", "rygxoCAL90EkBIxZnISI", "2015-04-03 05:08:07"),
("2015-04-03 05:08:07", "a0MtKbA61KPLVaTLImzc", "2015-04-03 05:08:07");

INSERT INTO Category (priority, description) VALUES
(1709.32286214, "QsIS0gf6Ghq1Lh9A4EnB"),
(3604.90462527, "anliVDJle4Kd8IlIBkj0");

INSERT INTO Tag (second_priority, hash, article_43_id) VALUES
(1332.21015123, "Fdzu1jJrI3FriTxRQg5Y", 1),
(995.311793776, "UDE5xUNx6ryZLGOmEYXR", 2);

INSERT INTO User (age, password, name, category_id) VALUES
(732, "dShkTo71c3EDEenjd5xk", "SFBurrFUX5mSNNfsPteu", 1),
(143, "i5LxdSkfAi1dlBze9TyT", "ctwxgcVJH9kflx2NxEBD", 2);

INSERT INTO Tag_User (user_id, tag_id) VALUES
(1, 1),
(2, 1);

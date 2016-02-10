/*
6. Execute the following migration
Separate Tag on two tables
Tag_part1 containing hash
Tag_part2 containing all the other fields
As a result SQL queries+code in other programming language must be create.
Write the queries from points 6 in a file called migrates.sql
*/

CREATE TABLE Tag_part1 (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, hash VARCHAR(255));
CREATE TABLE Tag_part2 (id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, second_priority FLOAT, article_43_id INT(11));
INSERT INTO Tag_part1 (id, hash) SELECT id, hash FROM Tag;
INSERT INTO Tag_part2 (id, second_priority, article_43_id) SELECT id, second_priority, article_43_id FROM Tag;
DROP TABLE Tag;
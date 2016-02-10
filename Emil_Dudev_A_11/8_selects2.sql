/*
8. Answer the following question
Which are the Category(s) for a given Tag
As a result SQL query must be created
Write the queries from points 8 in a file called selects2.sql
*/

SELECT Category.id FROM Category JOIN User
ON Category.id = User.category_id JOIN Tag_User
ON User.id = Tag_User.user_id JOIN Tag_part2
ON Tag_User.tag_id = Tag_part2.id
WHERE Tag_part2.id = 2;

/*
4. Answer the following question
Which are the User(s) for a given Article_43
As a result SQL query must be created
Write the queries from points 4 in a file called selects1.sql
*/

SELECT User.id FROM User JOIN Tag_User 
ON User.id = Tag_User.user_id JOIN Tag 
ON Tag_User.tag_id = Tag.id JOIN Article_43 
ON Tag.article_43_id = Article_43.id 
WHERE Article_43.id = 1;

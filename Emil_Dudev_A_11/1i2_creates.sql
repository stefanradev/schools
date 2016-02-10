/*
1. Create the following tables
Create table Article_43
 with columns:
	 created_on->date,	 published_on->date,	 password->string,
Create table Category
 with columns:
	 priority->double,	 description->long text,
Create table User
 with columns:
	 age->integer,	 name->varchar,	 password->varchar,
Create table Tag
 with columns:
	 hash->varchar(16),	 second_priority->float,
As a result SQL queries must be created

2. Connect the tables in the following way
Article_43 has a one to many connection to Tag
Tag has a many to many connection to User
User has a many to one connection to Category
As a result SQL queries must be created
Write the queries from point 1 and 2 in a file called creates.sql
*/

CREATE TABLE Article_43 (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	created_on DATETIME,
	password VARCHAR(255),
	published_on DATETIME
);

CREATE TABLE Category (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	priority DOUBLE,
	description TEXT
);

CREATE TABLE User (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	age INT(11),
	password VARCHAR(255),
	name VARCHAR(255)
);

CREATE TABLE Tag (
	id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	second_priority FLOAT,
	hash VARCHAR(255)
);

ALTER TABLE Tag ADD COLUMN article_43_id INT(11);
CREATE TABLE Tag_User(id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, tag_id INT(11), user_id INT(11));
ALTER TABLE User ADD COLUMN category_id INT(11);

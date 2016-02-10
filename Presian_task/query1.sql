create table Article_52 (
	id integer not null primary key auto_increment,
	published_on date,
	name varchar(255),
	url varchar(255)
);

create table Tag (
	id integer not null primary key auto_increment,
	hash varchar(16),
	name varchar(255),
	article_id integer,
	foreign key (article_id) references Article_52(id)
);

create table User (
	id integer not null primary key auto_increment,
	gender varchar(6),
	name varchar(255),
	age integer,
	tag_id integer unique,
	foreign key (tag_id) references Tag(id)
);

create table Category (
	id integer not null primary key auto_increment,
	description text,
	priority double,
	user_id integer,
	foreign key (user_id) references User(id)
);

create table Tag_part1 (
	id integer not null primary key auto_increment,
	hash varchar(16)
);

create table Tag_part2 (
	id integer not null primary key auto_increment,
	name varchar(255),
	article_id integer,
	foreign key (article_id) references Article_52(id)
);

insert into Tag_part1(hash)
select hash from Tag;

insert into Tag_part2(name, article_id)
select name, article from Tag;

drop table Tag;
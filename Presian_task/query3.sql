select u.id, a.id
from Article_52 a
	inner join Tag t
	on a.id = t.article_id
		inner join User u
		on u.tag_id = t.id
select t.id, c.id
from Tag t
	inner join User u
	on u.tag_id = t.id
		inner join Category c
		on c.user_id = u.id
SELECT u.id as uid , p.id as pid,
p.bio, u.first_name
FROM users as u, profiles as p
WHERE u.id = p.user_id;

-- INNER JOIN
SELECT u.id as uid , p.id as pid,
p.bio, u.first_name
FROM users as u
INNER JOIN profiles p
ON u.id = p.user_id
WHERE u.first_name LIKE '%a'
ORDER BY u.first_name desc
LIMIT 5;


DELETE FROM profiles where id BETWEEN  349 and 351;
-- RIGHT JOIN
-- A tabelas que está mais a esquerda neste código é users e a que está 
-- mais a direita é profiles
SELECT u.id as uid , p.id as pid,
p.bio, u.first_name
FROM users as u
RIGHT JOIN profiles p
ON u.id = p.user_id;
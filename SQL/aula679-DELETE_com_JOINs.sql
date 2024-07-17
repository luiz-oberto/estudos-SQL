-- Apaga registros com JOIN
SELECT u.first_name, p.bio FROM users u
LEFT JOIN profiles as p 
on p.user_id = u.id 
WHERE u.first_name = 'kennan';

DELETE p, u FROM users u 
left join profiles as p 
ON p.user_id = u.id
where u.first_name = 'Kennan';
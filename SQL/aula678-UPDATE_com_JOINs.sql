SELECT u.first_name, p.bio FROM users u
JOIN profiles as p 
ON p.user_id = u.id
WHERE u.first_name = 'Kennan';



UPDATE users as u
JOIN profiles as p 
ON p.user_id = u.id
set p.bio = CONCAT(p.bio, ' atualizado')
WHERE u.first_name = 'Kennan';
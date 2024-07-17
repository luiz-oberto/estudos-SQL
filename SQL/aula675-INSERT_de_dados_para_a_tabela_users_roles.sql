INSERT INTO user_roles(user_id, role_id)
VALUES 
(118, 3);

SELECT user_id, role_id FROM user_roles WHERE 
user_id = 118 AND role_id = 3;

-- seleciona
SELECT 
id,
(SELECT id from roles order by rand() limit 1) as qualquer 
FROM users;

insert into user_roles (user_id, role_id)
SELECT 
id,
(SELECT id from roles order by rand() limit 1) as qualquer 
FROM users;


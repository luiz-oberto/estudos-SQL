-- 1) Insira 5 usuários
INSERT INTO users 
(first_name, last_name, email, password_hash)
VALUES
('Oberto', 'Raiol', 'oberto@email.com', 'fjkaldçfjkald1'),
('Maria', 'Da Silva', 'DaSilva@email.com', 'fjkaldçfjkald2'),
('Kelly', 'Ferreira', 'Ferreira@email.com', 'fjkaldçfjkald3'),
('Leonor', 'Dos Santos', 'Leonor@email.com', 'fjkaldçfjkald4'),
('Mateus', 'Pipoca', 'Mateus@email.com', 'fjkaldçfjkald5');


-- 2) Insira 5 perfis para usuários inseridos
-- Comando para ver os novos usuários
SELECT u.id as uid, first_name, p.id as pid, p.bio FROM users AS u 
LEFT JOIN profiles AS p ON u.id = p.user_id 
WHERE u.id BETWEEN 213 and 217;

-- criando perfis de usuários
INSERT INTO profiles 
(bio, description, user_id)
SELECT
CONCAT('Bio do novo usuário ', first_name),
concat('Description do novo usuário ', first_name),
id 
from users
WHERE id BETWEEN 213 and 217;


-- 3) Insira permissões (roles) paras os usuários inseridos
-- comando para visulizar a permissão dos novos usuários:
SELECT u.id as uid, first_name, ur.user_id, ur.role_id
FROM users AS u 
LEFT JOIN user_roles as ur ON u.id = ur.user_id 
WHERE u.id BETWEEN 213 and 217;

-- inserindo permissões para os novos usuários
INSERT INTO user_roles (user_id, role_id)
SELECT 
id,
(SELECT id FROM roles ORDER BY RAND() LIMIT 1) as qualquer
FROM users 
WHERE id BETWEEN 213 and 217;


-- 4) Selecione os últimos 5 usuários por ordem decrescente
SELECT * FROM users AS u 
ORDER BY u.id DESC
limit 5;


-- 5) atualize o último usuário inserido
-- Procurando pelo último usuário
SELECT * FROM users AS u 
ORDER BY u.id DESC
limit 1;

-- Atualizando...
UPDATE users
set 
last_name = 'Antunes'
WHERE id = 217;


-- 6) Remova uma permissão de algum usuário
-- Visualizando permissões
SELECT u.id, first_name, r.name AS role_name
FROM users AS u 
LEFT JOIN user_roles AS ur ON ur.user_id = u.id
LEFT JOIN roles AS r ON ur.role_id = r.id
WHERE u.id = 205; 

-- removendo uma permissão
DELETE FROM user_roles 
WHERE user_id = 205;


-- 7) Remova um usuário que tem a permissão "PUT"
-- visualizando quem tem a permissão PUT
SELECT u.id, first_name, r.name AS role_name
FROM users AS u 
LEFT JOIN user_roles AS ur ON ur.user_id = u.id
LEFT JOIN roles AS r ON ur.role_id = r.id;
-- WHERE ur.role_id = 3; -> procura apenas por quem tem a permissão "PUT"

-- Removendo um usuário que tem a permissão PUT
DELETE FROM user_roles
WHERE user_id = 106;


-- 8) Selecione usuário com perfis e permissões (Obrigatório)
SELECT u.id, u.first_name, p.bio, r.name 
FROM users AS u 
INNER JOIN profiles as p ON p.user_id = u.id
JOIN user_roles AS ur ON ur.user_id = u.id
JOIN roles AS r ON r.id = ur.role_id;

-- 9) Selecione usuários com perfis e permissões (opcional)
SELECT u.id, u.first_name, p.bio, r.name 
FROM users AS u 
LEFT JOIN profiles as p ON p.user_id = u.id
LEFT JOIN user_roles AS ur ON ur.user_id = u.id
LEFT JOIN roles AS r ON r.id = ur.role_id;

-- 10) Selecione usuários com perfis e permissões ordenado por salário DECRESCENTE
SELECT u.id, u.first_name, p.bio, r.name, u.salary 
FROM users AS u 
INNER JOIN profiles as p ON p.user_id = u.id
JOIN user_roles AS ur ON ur.user_id = u.id
JOIN roles AS r ON r.id = ur.role_id
ORDER BY u.salary DESC;

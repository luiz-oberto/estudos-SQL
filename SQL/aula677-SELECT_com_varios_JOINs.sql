SELECT 
u.id as uid, u.first_name, p.bio, r.name AS role_name
FROM users as u
LEFT JOIN profiles as p ON u.id = p.user_id
INNER JOIN user_roles as ur ON u.id = ur.user_id
INNER JOIN roles as r ON ur.role_id = r.id
WHERE u.id = 107
ORDER BY uid ASC
;

-- selecione as colunas
-- das tabelas
-- com as seguintes relações entre colunas (LEFT JOIN, INNER JOIN)
-- WHERE
-- Ordernar
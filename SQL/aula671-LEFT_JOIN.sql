-- LEFT JOIN
-- Considera todos os valores que estão a esquerda mesmo que não tenha relação 
-- com os valores a direita, o que acaba retornando NULL
SELECT u.id as uid , p.id as pid,
p.bio, u.first_name
FROM users as u
LEFT JOIN profiles p
ON u.id = p.user_id;
SELECT u.id as uid , p.id as pid
FROM users as u, profiles as p;
-- Quando você faz esse tipo de SELECT, você acaba fazendo um produto cartesiano das tabelas
-- ou seja, voce junta e mistura tudo.

SELECT u.id as uid , p.id as pid,
p.bio, u.first_name
FROM users as u, profiles as p
WHERE u.id = p.user_id;
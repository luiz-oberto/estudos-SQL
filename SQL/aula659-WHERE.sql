-- Não podemos usar de forma alguma o UPDATE ou DELETE sem um WHERE!
-- OPERADORES LÓGICOS:
-- = < <= > >= <> != (os dois últimos significa 'diferente') -> também funciona com datas
-- --------------------------------------
-- WHERE filtra registros
-- SELECT * FROM users
-- WHERE id=107;
-- "selecione tudo (todas as colunas) aonde o id for igual a 107"
-- ---------------------------------------
-- OPERADORES LÓGICOS and E or

SELECT * from users
where created_at < '2024-07-15 14:41:26';
-- AND first_name = 'Luiz'
-- and password_hash = 'a_hash';



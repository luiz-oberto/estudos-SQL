-- UPDATE - Atualiza registros
update users set 
first_name = 'Luiz',
last_name = 'Miranda'
where id BETWEEN 119 and 121;

SELECT * from users WHERE id BETWEEN 119 and 121;

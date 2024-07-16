-- IN seleciona elementos entre os valores enviados
SELECT * from users 
where id in (100, 105, 110, 115, 120, 125, 130)
and first_name in ('Luiz', 'keelie');

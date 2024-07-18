-- BETWEEN seleciona um range
SELECT * FROM users u
WHERE 
created_at BETWEEN 
'2020-06-12 00:00:00'
AND '2020-09-04 23:59:59'
and id BETWEEN 163 and 210;
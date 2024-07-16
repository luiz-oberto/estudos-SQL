-- LIMIT -> limita a qtd de valores
-- offset -> desloca o cursor para exibir os resultados
-- 		limit 3, offset 6 -> "retorne 3 linhas a partir da linha 6"
-- 		limit 3, 6 -> "retorne 6 linhas a partir da linha 3"
SELECT id, first_name, email as uemail
from users
where id BETWEEN 100 and 150
order by id ASC 
limit 9, 3;
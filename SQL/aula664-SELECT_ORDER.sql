-- ORDER BY -> seleciona e ordenar com base na prioridade que voce passou
SELECT id, first_name, email as uemail
from users
where id BETWEEN 100 and 150
order by first_name DESC, id asc;
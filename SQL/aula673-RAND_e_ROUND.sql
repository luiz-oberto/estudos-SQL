-- RAND e ROUND
-- RAND -> random
-- ROUND -> passa por todas as linhas da tabela
SELECT  round(rand() * 10000, 2);
-- configura um salário aletório para users
UPDATE users set salary = round(rand() * 10000, 2);

SELECT salary from users where 
salary BETWEEN 1000 and 1500
order by salary asc;
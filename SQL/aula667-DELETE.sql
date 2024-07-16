-- DELETE
-- apaga coisas da tabela
-- A maneira mais segura de utilizar o DELETE é utilizando a PRIMARY_KEY

-- Aviso: use o SELECT para garantir que está 
-- apagando os valores corretos

-- Aviso2: só conseguimos apagar o que acontece no profile por conta do CASCADE
DELETE FROM users where id BETWEEN 110 AND 115;


select * from users where id BETWEEN 110 AND 115;

-- INSERT IGNORE
INSERT IGNORE INTO user_roles (user_id, role_id)
select
id, 
(SELECT id from roles order by rand() limit 1) as qualquer
from users order by rand() limit 5;
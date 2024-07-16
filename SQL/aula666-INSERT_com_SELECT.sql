-- INSERT SELECT 
-- insere valores em uma tabela usando outra
INSERT INTO profiles 
(bio, description, user_id)
SELECT 
concat('Bio de ', first_name), 
CONCAT('Description de ', '', first_name), 
id 
from users;




delete from profiles;
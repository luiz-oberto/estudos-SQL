-- GROUP BY
SELECT first_name, count(id) as total FROM users
GROUP BY first_name
ORDER BY total  DESC;

SELECT u.first_name, COUNT(u.id) AS total from users u 
left join profiles as p 
on p.user_id = u.id 
WHERE u.id in (131, 129)
GROUP BY first_name
order by total desc
limit 5;

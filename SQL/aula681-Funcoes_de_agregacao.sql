SELECT
max(salary) as max_salary,
MIN(salary) as min_salary,
avg(salary) as avg_salary,
sum(salary) as sum_salary,
count(salary) as count_salary
FROM users
WHERE first_name = 'Carly';

SELECT
max(salary) as max_salary,
MIN(salary) as min_salary,
avg(salary) as avg_salary,
sum(salary) as sum_salary,
count(salary) as count_salary
FROM users;

SELECT 
u.first_name,
max(u.salary) as max_salary,
MIN(u.salary) as min_salary,
avg(u.salary) as avg_salary,
sum(u.salary) as sum_salary,
COUNT(u.id) as total
FROM users u 
LEFT JOIN profiles as p 
on p.user_id = u.id 
GROUP BY first_name
ORDER BY total desc;


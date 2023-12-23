-- Вывести всех работников, которые работают сразу на нескольких проектах. Ответ должен содержать следующие столбцы:
-- Имя и фамилия сотрудника;
-- Название должности.


SELECT CONCAT (employee.first_name, ' ', employee.last_name) AS FIO, titles.titel_name AS PALM
FROM employee
JOIN positions ON employee.employee_id = positions.employee_id
JOIN titles ON positions.title_id = titles.id
GROUP BY FIO, PALM
HAVING COUNT (positions.project_id) > 1



-- Написать два SQL запроса для выполнения задания:
-- Вывести среднюю заработную плату всех тестировщиков на проекте “ПУМЧД”. Ответ должен содержать столбцы:
-- Название проекта;
-- Название должности;
-- Средняя заработная плата.

SELECT project.project_name, titles.titel_name, ROUND(AVG(positions.salary))
FROM project
JOIN positions ON project.project_id = positions.project_id
JOIN titles ON positions.title_id = titles.id
WHERE titles.titel_name LIKE '%тестировщик%' 
AND projects.project_name = 'ПУМЧД'
GROUP BY project.project_name, titles.titel_name
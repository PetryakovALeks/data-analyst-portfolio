-- Задача 1. Диапазон зарплат: средние, минимумы и максимумы
-- нижней (salary_from) и верхней (salary_to) границы
SELECT MAX(salary_from) AS max_salary_from,
       MIN(salary_from) AS min_salary_from,
       AVG(salary_from) AS avg_salary_from,
       MAX(salary_to)   AS max_salary_to,
       MIN(salary_to)   AS min_salary_to,
       AVG(salary_to)   AS avg_salary_to
FROM public.parcing_table;

-- Результат: avg_from ≈ 109 525, avg_to ≈ 153 847,
-- min_from = 50 (выброс), max_from = 398 000, min_to = 25 000, max_to = 497 500

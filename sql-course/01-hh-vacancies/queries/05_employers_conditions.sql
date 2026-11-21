-- Задача 5. Работодатели аналитиков: число вакансий, средние зарплаты, условия труда
SELECT employer,
       COUNT(id) AS count,
       ROUND(AVG(salary_from), 2) AS avg_salary_from,
       ROUND(AVG(salary_to), 2)   AS avg_salary_to,
       schedule,
       employment
FROM public.parcing_table
WHERE name ILIKE '%аналитик данных%'
   OR name ILIKE '%data analyst%'
   OR name ILIKE '%системный аналитик%'
GROUP BY employer, schedule, employment
ORDER BY count DESC;

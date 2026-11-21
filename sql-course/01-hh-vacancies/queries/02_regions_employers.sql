-- Задача 2.1. Топ-10 регионов по числу вакансий
SELECT COUNT(id) AS total_count,
       area
FROM public.parcing_table
GROUP BY area
ORDER BY total_count DESC
LIMIT 10;

-- Задача 2.2. Топ-10 компаний по числу вакансий
SELECT COUNT(id) AS total_count,
       employer
FROM public.parcing_table
GROUP BY employer
ORDER BY total_count DESC
LIMIT 10;

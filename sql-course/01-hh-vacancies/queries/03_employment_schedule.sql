-- Задача 3.1. Типы занятости
SELECT COUNT(id) AS total_count,
       employment
FROM public.parcing_table
GROUP BY employment
ORDER BY total_count DESC;

-- Задача 3.2. Графики работы
SELECT COUNT(id) AS total_count,
       schedule
FROM public.parcing_table
GROUP BY schedule
ORDER BY total_count DESC;

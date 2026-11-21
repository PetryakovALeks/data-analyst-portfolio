-- Задача 4. Распределение грейдов среди аналитиков данных и системных аналитиков
SELECT experience,
       COUNT(id) AS count,
       ROUND(COUNT(id) * 100.0 / SUM(COUNT(id)) OVER (), 1) AS share_pct
FROM public.parcing_table
WHERE name ILIKE '%аналитик данных%'
   OR name ILIKE '%data analyst%'
   OR name ILIKE '%системный аналитик%'
GROUP BY experience
ORDER BY count DESC;

-- Доля считается оконной функцией: SUM(COUNT(id)) OVER () — общее число
-- вакансий в выборке, поэтому не нужно вписывать итог вручную.

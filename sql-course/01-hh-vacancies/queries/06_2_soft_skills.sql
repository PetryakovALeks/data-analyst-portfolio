-- Задача 6.2. Самые востребованные soft skills по грейдам
-- В названиях есть лишние пробелы в начале, поэтому навык очищается TRIM
WITH skills AS (
    SELECT soft_skills_1 AS skill, experience FROM public.parcing_table
    WHERE name ILIKE '%аналитик данных%'
   OR name ILIKE '%data analyst%'
   OR name ILIKE '%системный аналитик%'
    UNION ALL
    SELECT soft_skills_2, experience FROM public.parcing_table
    WHERE name ILIKE '%аналитик данных%'
   OR name ILIKE '%data analyst%'
   OR name ILIKE '%системный аналитик%'
    UNION ALL
    SELECT soft_skills_3, experience FROM public.parcing_table
    WHERE name ILIKE '%аналитик данных%'
   OR name ILIKE '%data analyst%'
   OR name ILIKE '%системный аналитик%'
    UNION ALL
    SELECT soft_skills_4, experience FROM public.parcing_table
    WHERE name ILIKE '%аналитик данных%'
   OR name ILIKE '%data analyst%'
   OR name ILIKE '%системный аналитик%'
)
SELECT experience,
       TRIM(skill) AS skill,
       COUNT(*)    AS tot_cnt
FROM skills
WHERE skill IS NOT NULL
  AND TRIM(skill) <> ''
GROUP BY experience, TRIM(skill)
ORDER BY experience, tot_cnt DESC;

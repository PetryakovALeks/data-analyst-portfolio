WITH skills AS (SELECT key_skills_1 AS skill,experience FROM public.parcing_table
WHERE name ILIKE('%аналитик данных%') OR name ILIKE('%data analyst%') OR name ILIKE ('%системный аналитик%')
UNION  ALL
SELECT key_skills_2 AS skill,experience FROM public.parcing_table
WHERE name ILIKE('%аналитик данных%') OR name ILIKE('%data analyst%') OR name ILIKE ('%системный аналитик%')
UNION ALL
SELECT key_skills_3 AS skill,experience FROM public.parcing_table
WHERE name ILIKE('%аналитик данных%') OR name ILIKE('%data analyst%') OR name ILIKE ('%системный аналитик%')
UNION  ALL
SELECT key_skills_4 AS skill,experience FROM public.parcing_table
WHERE name ILIKE('%аналитик данных%') OR name ILIKE('%data analyst%') OR name ILIKE ('%системный аналитик%'))
SELECT experience ,skill, COUNT(*) AS tot_cnt
FROM skills
WHERE skill IS NOT NULL
GROUP BY experience,skill
ORDER BY experience,tot_cnt DESC
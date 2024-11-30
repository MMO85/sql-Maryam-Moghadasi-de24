-----Python 50K< X <100k-----
-----Many other languages is like (X > 50K) && (X < 100K)------

-----IN SQL BETWEEN AND OPERATOR-----------
SELECT
	*
FROM
	main.data_jobs
WHERE
	salary_in_usd BETWEEN 50000 AND 100000;
	
SELECT 
	experience_level,
	job_title,
	ROUND(salary_in_usd * 11.01 / 12) AS salary_in_SEK_month,
	employment_type
FROM
	main.data_jobs
WHERE
	salary_in_usd BETWEEN 20000 AND 50000
	AND job_title = 'Data Engineer'
	AND experience_level = 'EntryLevel'
	AND employment_type = 'FT'
ORDER BY
	salary_in_SEK_month ASC;
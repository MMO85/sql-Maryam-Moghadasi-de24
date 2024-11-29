SELECT
	*
FROM
	main.data_jobs;


 SELECT
	COUNT(*)
FROM
	main.data_jobs;
 
-----filtering-------

SELECT
	*
FROM
	main.data_jobs
WHERE
	salary_in_usd < 50000;


SELECT
	COUNT(*) AS number_rows_lower_than_50K
FROM
	main.data_jobs
WHERE
	salary_in_usd < 50000;
----Focus on experience_level------
SELECT
	experience_level
FROM
	main.data_jobs;

SELECT
	DISTINCT experience_level
FROM
	main.data_jobs;
	
SELECT
	*
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';
	
SELECT
	MEDIAN(salary_in_usd)
FROM
	main.data_jobs
WHERE
	experience_level = 'EN';
	
SELECT
	MEDIAN(salary_in_usd)
FROM
	main.data_jobs
WHERE
	experience_level = 'MI';
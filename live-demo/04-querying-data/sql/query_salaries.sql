SELECT * FROM data_jobs;


-----namespace------
SELECT * FROM main.data_jobs;

-----fully qulified name------
SELECT * FROM salaries.main.data_jobs;

SELECT * FROM main.data_jobs LIMIT 10;

SELECT dwork_year,salary,salary_in_usd FROM main.data_jobs LIMIT 5;

SELECT * EXCLUDE(salary)
FROM main.data_jobs; 
-----a)

SELECT * FROM main.data_jobs;

SELECT DISTINCT employment_type FROM main.data_jobs;

SELECT
	CASE
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part Time'
		WHEN employment_type = 'FT' THEN 'Full Time'
		ELSE employment_type
	END
	 AS employment_type
FROM
	main.data_jobs;
	

----transformation in cleaned_salaries-----
UPDATE main.cleaned_salaries
SET 
employment_type = 	CASE
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part Time'
		WHEN employment_type = 'FT' THEN 'Full Time'
		ELSE employment_type
	END;
	
SELECT DISTINCT employment_type FROM main.cleaned_salaries;

---c,d)ONE approach is to create a new table with this content--
----and replace the old one (create or replace table AS ...)
SELECT
	salary_in_usd * 10.9 AS salary_in_SEK,
	ROUND(salary_in_SEK/12) AS salary_monthly_SEK,
	*
FROM
	main.cleaned_salaries;


----SEcons approach is to add new columns
----in add_columns

SELECT salary_SEK_monthly FROM main.cleaned_salaries;

UPDATE main.cleaned_salaries
SET 
salary_SEK_yearly = salary_in_usd * 10.9,
salary_SEK_monthly = (salary_in_usd * 10.9)/12;

SELECT salary_SEK_yearly,salary_SEK_monthly FROM main.cleaned_salaries;

---e)
----stratrgy is statistical approach
----there are aggregation functions such as AVG,MIN,MAX,MEDIAN,COUNTILE_COUNT
----Summerize IN duckdb

summarize main.cleaned_salaries;

---93000 - low
---129000 medium
---170000 high
--->170000 insanly high

SELECT
	salary_SEK_monthly,
	CASE
		WHEN salary_SEK_monthly < 93000 THEN 'Low'
		WHEN salary_SEK_monthly < 129000 THEN 'medium'
		WHEN salary_SEK_monthly < 170000THEN 'high'
		ELSE 'insaly high'
	END AS salary_level
FROM
	main.cleaned_salaries;

UPDATE main.cleaned_salaries
SET
	salary_level = CASE
		WHEN salary_SEK_monthly < 93000 THEN 'low'
		WHEN salary_SEK_monthly < 129000 THEN 'medium'
		WHEN salary_SEK_monthly < 170000 THEN 'high'
		ELSE 'insanely_high'
	END;

SELECT salary_level, salary_SEK_monthly FROM main.cleaned_salaries;

---f)choose some usefull columns and remove the rest

CREATE OR REPLACE TABLE main.cleaned_salaries AS(
SELECT
	experience_level,
	employment_type,
	job_title,
	salary_SEK_yearly,
	salary_SEK_monthly,
	remote_ratio,
	company_size,
	salary_level
FROM
	main.cleaned_salaries);

SELECT * FROM main.cleaned_salaries;





---10 most searched food---
SELECT
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food
ORDER BY total_searches DESC
LIMIT 10;

---total searches by year---
SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	year
ORDER BY
	total_searches DESC;



SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	year
HAVING 
	total_searches > 300000
ORDER BY
	total_searches DESC;


SELECT
	year,
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food,
	year
ORDER BY total_searches DESC ;


---most popular food in summer---

----most popular food in winter----




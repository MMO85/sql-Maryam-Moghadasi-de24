---id --> food
---remove google topic---
---year column---
----week_id --> week---
----value--> number of searches----

CREATE TABLE IF NOT EXISTS main.cleaned_food AS(
SELECT
	id AS food,
	SUBSTRING(week_id, 1, 4) AS year, ---in python-->week_id[:4] 
	week_id[6:] AS week,
	value AS number_searches
FROM
	main.food);

SELECT * FROM main.cleaned_food;

DESC;

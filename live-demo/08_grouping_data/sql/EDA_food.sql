---EDA explatory data analysis-----
SELECT * FROM main.food;

SELECT DISTINCT id AS food FROM main.food;
----135025-----
SELECT COUNT(*) FROM main.food; 

---cols:id,googleTopic,week_id,value----
DESC main.food;

SELECT
	*
FROM
	main.food
WHERE
	week_id BETWEEN '2004-04' AND '2004-10';
	

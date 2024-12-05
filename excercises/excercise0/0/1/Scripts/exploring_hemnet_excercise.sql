----1. a) ingested data
----1. b)
SELECT * FROM main.hemnet_data;

----Testing percentage difference----
SELECT  6950000*0.07;
---486500.00----
SELECT 6950000-6950000*0.07;

----1. c)
SELECT COUNT(*) FROM main.hemnet_data;

----1. d)
DESC;
DESC TABLE hemnet_data;

----1  e)
SELECT
	address,
	commune,
	final_price
FROM
	main.hemnet_data
ORDER BY
	final_price DESC
LIMIT 5;

---explore rooms----
SELECT
	rooms,
	final_price
FROM
	main.hemnet_data
WHERE
	rooms <= 2;
	
----final statistics----
----1  g)
SELECT
	MIN(final_price) AS min,
	MAX(final_price) AS max,
	MEDIAN(final_price) AS median,
	AVG(final_price) AS avrage
FROM
	main.hemnet_data;
	
----1. J)(delen/hela)*100

SELECT
	(Count(*)*100 / (SELECT COUNT(*) FROM main.hemnet_data)) AS percentage_over_10M
FROM
	main.hemnet_data
WHERE
	final_price > 10000000; 


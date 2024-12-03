SELECT * FROM database.duckdb;

SELECT
	*
FROM
	database.duckdb
WHERE
	word IN('TIMESTAMPTZ', 'DROP SCHEMA')
	AND id IN(5, 8);

DELETE
FROM
	database.duckdb
WHERE
	word IN('TIMESTAMPTZ', 'DROP SCHEMA')
	AND id IN(5, 8);

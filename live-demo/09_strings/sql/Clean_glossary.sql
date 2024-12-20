CREATE schema IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.sql_glossary AS (
SELECT
	UPPER(TRIM(sql_word)) AS SQL_word,
	REGEXP_REPLACE(TRIM(description),' +',' ','g') AS cleaned_description,
	example
FROM
	staging.sql_glossary);
	
SELECT * FROM refined.sql_glossary;
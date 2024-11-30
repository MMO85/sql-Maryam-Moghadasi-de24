SELECT
	*
FROM
	main.data_jobs;
	
----EN ska bli entry level------
----MI ska bli midlevel---------
----SE ska bli senior----------
----EX ska bli expert-----------
---- NU ska vi transformera datan----------
SELECT
	CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MI' THEN 'Midlevel'
		WHEN experience_level = 'EN' THEN 'EntryLevel'
		WHEN experience_level = 'EX' THEN 'Expert'		
	END
	AS experience_level,
	* EXCLUDE ('experience_level')
FROM
	main.data_jobs;
	

------Have I transformed my data?-----

SELECT * FROM main.data_jobs;
----Nej, gamla columnen finns kvar-----


----To presist changes we need to do Update______
 UPDATE
	main.data_jobs
SET
	experience_level = CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MI' THEN 'Midlevel'
		WHEN experience_level = 'EN' THEN 'EntryLevel'
		WHEN experience_level = 'EX' THEN 'Expert'
	END
	WHERE experience_level IN ('SE','MI','EN','EX');

SELECT * FROM main.data_jobs;

SELECT DISTINCT experience_level FROM main.data_jobs;


-- View tables
select * from ['Data Dictionary$']
select * from ['Insurance Policies$']

-- Data Transformation

-- birthdate column is in the MM/DD/YYYY format, so I convert it to the YYYY/MM/DD format
ALTER TABLE ['Insurance Policies$']
ADD DOB DATE;

UPDATE ['Insurance Policies$']
SET DOB = birthdate;

-- Drop birthdate column
ALTER TABLE ['Insurance Policies$']
drop column birthdate;


-- Add Age column to calculate age
ALTER TABLE ['Insurance Policies$']
ADD Age int;

UPDATE ['Insurance Policies$']
SET Age = DATEDIFF(year, DOB, GETDATE());


-- INTENDED MANIPULATION. (DONE IN POWER BI USING AGE GROUPS)
ALTER TABLE table_name
ADD age_range VARCHAR(20);

UPDATE table_name
SET age_range = (
CASE
	WHEN condition THEN 'output'
	WHEN condition THEN 'output'
	WHEN condition THEN 'output'
	WHEN condition THEN 'output'
	ELSE 'output'
END
);

show timezone;

SELECT now();


CREATE Table TimeZone(ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);

INSERT into TimeZone VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00');

SELECT * FROM TimeZone;

SELECT CURRENT_DATE;

-- this call casting
SELECT now()::time without time zone;
SELECT now()::time WITH time zone;
SELECT now()::date;

-- custom date 
SELECT to_char(now(),'yyyy/mm/dd');

SELECT CURRENT_DATE -INTERVAL '1 year 1 month';

SELECT *,age(CURRENT_DATE,dob) from students;

SELECT extract(YEAR from '2024-02-4'::date);

SELECT 'y'::BOOLEAN;

SELECT * FROM students;


SELECT country ,avg(age) FROM students GROUP BY country;
SELECT country ,avg(age) FROM students GROUP BY country HAVING avg(age)>=21;

SELECT extract(YEAR FROM dob) as Birth_year,count(*) from students GROUP BY Birth_year;
  
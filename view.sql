    CREATE or REPLACE View avr_salary
    as 
    SELECT department_name,avg(salary) FROM employees GROUP BY department_name;

    SELECT * from avr_salary
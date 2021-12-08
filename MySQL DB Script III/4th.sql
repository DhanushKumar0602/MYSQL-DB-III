use kumardb;
SELECT FIRST_NAME, LAST_NAME, SALARY 
FROM employees 
WHERE SALARY > 
(SELECT salary FROM employees WHERE last_name = 'Austin');
select * from employees;
-- sorting
SELECT * FROM employees ORDER BY salary;

SELECT * FROM employees WHERE year = 2011 ORDER BY salary;

SELECT * FROM employees ORDER BY last_name DESC;

SELECT * FROM employees ORDER BY department ASC, salary DESC;

-- DISTINCT
SELECT DISTINCT year FROM employees;

SELECT DISTINCT department, position FROM employees;

-- COUNT
SELECT count(*) FROM employees;

SELECT count(position) FROM employees;

SELECT count(DISTINCT position) FROM employees;

-- other functions
SELECT max(salary) FROM employees;

SELECT avg(salary) FROM employees WHERE year = 2013;

SELECT sum(salary) FROM employees WHERE year = 2014 AND department = 'Marketing';

-- GROUP BY
SELECT department, count(*) FROM employees WHERE year = 2013 GROUP BY department;

SELECT department, min(salary), max(salary) FROM employees WHERE year = 2014 GROUP BY department;

SELECT department, avg(salary) FROM employees WHERE year = 2015 GROUP BY department;

SELECT first_name, last_name, avg(salary) FROM employees GROUP BY first_name, last_name;

-- HAVING
SELECT first_name, last_name, count(*) FROM employees GROUP BY first_name, last_name HAVING count(*) > 2;

SELECT department, avg(salary) FROM employees WHERE year = 2012 GROUP BY department HAVING avg(salary) > 3000;

SELECT last_name, first_name, sum(salary) FROM employees GROUP BY last_name, first_name ORDER BY sum(salary) DESC;

-- General
SELECT last_name, first_name, avg(salary) AS average_salary, count(*) AS years_worked FROM employees
  GROUP BY last_name, first_name HAVING count(*) > 2 ORDER BY avg(salary) DESC;

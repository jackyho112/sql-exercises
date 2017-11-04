SELECT * FROM cycling
WHERE year >= 2010 AND year <= 2014
UNION
SELECT * FROM skating
WHERE year >= 2010 AND year <= 2014;

SELECT country FROM cycling
UNION ALL
SELECT country FROM skating;

SELECT person FROM cycling
INTERSECT
SELECT person FROM skating;

SELECT country FROM cycling
EXCEPT
SELECT country FROM skating;

SELECT year FROM skating
MINUS
SELECT year FROM cycling;

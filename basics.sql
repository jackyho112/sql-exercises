-- select every car record from the car table
SELECT * FROM car;

-- select every car's brand from the car table
SELECT brand FROM car;

-- select every car's model and price from the car table
SELECT model, price FROM car;

-- select every car from the car table where the production year is 1999
SELECT * FROM car WHERE production_year = 1999;

-- other conditional operators
SELECT * FROM car WHERE price > 10000;

SELECT * FROM car WHERE production_year != 1999;

SELECT brand, model, production_year FROM car WHERE price <= 10000;

SELECT vin FROM car WHERE production_year < 2005 OR price < 10000;

SELECT vin FROM car WHERE production_year > 1999 AND price < 7000;

SELECT vin, brand, model FROM car WHERE production_year BETWEEN 1995 AND 2005;

SELECT vin, brand, model FROM car WHERE production_year NOT BETWEEN 1995 and 2005;

-- joining multiple conditions
SELECT vin FROM car WHERE (production_year < 1999 OR production_year > 2005) AND (price < 4000 OR price > 10000);

-- equality of condition
SELECT * FROM car WHERE brand = 'Ford';

-- LIKE
SELECT vin, brand, model FROM car WHERE brand LIKE 'F%';

SELECT vin FROM car WHERE model LIKE '%s';

SELECT * FROM car WHERE brand LIKE 'Volk_wagen';

-- NULL
SELECT * FROM car WHERE price IS NOT NULL;
SELECT * FROM car WHERE price IS NULL;
SELECT * FROM car WHERE price >= 0;

-- Maths
SELECT * FROM car where (price * 0.20) > 2000;

-- General
SELECT * FROM car where
production_year >= 1999 AND
production_year <= 2003 AND
brand != 'Volkswagens' AND
model LIKE 'P%' OR
model LIKE '%T' AND
price IS NOT NULL

SELECT *
FROM city
WHERE area = (SELECT area FROM city WHERE name = 'Paris');

SELECT name
FROM city
WHERE population < (SELECT population FROM city WHERE name = 'Madrid');

SELECT *
FROM trip
WHERE price > (SELECT avg(price) FROM trip);

SELECT *
FROM hiking_trip
WHERE difficulty IN (1,2,3);

SELECT *
FROM trip
WHERE city_id IN (SELECT id FROM city WHERE area > 100);

SELECT * FROM city
WHERE population < ALL (SELECT population FROM country);

SELECT * FROM trip
WHERE price = ANY (SELECT price
FROM hiking_trip);

SELECT * FROM country
WHERE population <= (SELECT min(population)
FROM city
WHERE city.country_id = country.id);

SELECT *
FROM city main_city
WHERE rating > (SELECT avg(rating) FROM city average_city
WHERE main_city.country_id = average_city.country_id);

SELECT * FROM trip
WHERE city_id IN (SELECT id FROM city WHERE rating < 4);

SELECT * FROM country
WHERE EXISTS (SELECT * FROM mountain WHERE country_id = country.id);

SELECT * FROM mountain
WHERE NOT EXISTS (SELECT * FROM hiking_trip WHERE mountain_id = mountain.id);

SELECT * FROM hiking_trip main_hiking_trip
WHERE length >= ALL (SELECT length FROM hiking_trip sub_hiking_trip
   WHERE main_hiking_trip.mountain_id = sub_hiking_trip.mountain_id);

SELECT * FROM trip main_trip
WHERE days < ANY (SELECT days FROM hiking_trip sub_hiking_trip
  WHERE main_trip.price = sub_hiking_trip.price);

SELECT *
FROM mountain, (SELECT *
   FROM country
   where population >= 50000) AS small_country
    WHERE small_country.id = mountain.country_id;

SELECT length, height
FROM hiking_trip,
(SELECT * FROM mountain WHERE height >= 3000) AS tall_mountain
WHERE tall_mountain.id = hiking_trip.mountain_id;

SELECT name,
(SELECT count(*) FROM hiking_trip WHERE mountain_id = mountain.id) AS count
FROM mountain;

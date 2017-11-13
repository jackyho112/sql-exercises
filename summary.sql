SELECT *
FROM horoscope
WHERE sign in ('Pisces', 'Aquarius') AND year >= 2010 AND year <= 2014;

SELECT pet.name, type, pet.year_born AS pet_year_born, owner.name, owner.year_born AS owner_year_born
FROM pet
JOIN owner on pet.owner_id = owner.id
WHERE pet.name LIKE 'M%'

SELECT person, COUNT(id) AS number_of_essays, AVG(points) AS avg_points
FROM essay
GROUP BY person HAVING avg_points > 80;

SELECT coach.*, player.*
FROM coach
LEFT JOIN player ON coach.player_id = player.id;

SELECT *
FROM prison
WHERE EXISTS (SELECT * FROM prisoner WHERE age > 50 AND prisoner.prison_id = prison.id);

SELECT *
FROM gluten_free_product INTERSECT
SELECT * FROM vegetarian_product;

SELECT
c.id AS cus_id,
c.name AS cus_name,
MAX(pi.purchase_id) AS latest_purchase_id, 	-- purchase_id listed chronologically, so MAX is most recent
SUM(pi.quantity) AS all_items_purchased

FROM customer c

-- connecting customer IDs to their purchases.
JOIN purchase p
ON c.id = p.customer_id

-- connecting customer purchases to purchase details
JOIN purchase_item pi
ON p.id = pi.purchase_id

-- only 3 customers, so grouping by their customer's IDs
GROUP BY c.id

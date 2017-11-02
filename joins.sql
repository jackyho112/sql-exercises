-- normal join
SELECT *
FROM student
JOIN room
ON student.room_id = room.id;

SELECT student.name, room.room_number
FROM student
JOIN room
ON student.room_id = room.id;

-- other join types
SELECT *
FROM equipment
INNER JOIN room
ON equipment.room_id = room.id;

SELECT *
FROM student
LEFT JOIN room
ON student.room_id = room.id;

SELECT *
FROM equipment
LEFT JOIN room
ON equipment.room_id = room.id;

SELECT *
FROM student
RIGHT JOIN room
ON student.room_id = room.id;

SELECT *
FROM room
RIGHT JOIN student
ON student.room_id = room.id;

SELECT * FROM room
RIGHT OUTER JOIN equipment
ON equipment.room_id = room.id
WHERE equipment.name = 'kettle';

SELECT e.id, e.name, r.beds, r.room_number
FROM equipment AS e
INNER JOIN room AS r
On e.room_id = r.id;

SELECT *
FROM student AS s1
JOIN student AS s2
ON s1.room_id = s2.room_id
WHERE s1.name = 'Jack Pearson'
AND s1.id != s2.id;

SELECT s1.name, s2.name, r.room_number
FROM student AS s1
JOIN student AS s2 ON s1.room_id = s2.room_id
JOIN room AS r ON r.id = s1.room_id
WHERE r.beds = 2
AND s1.name < s2.name;

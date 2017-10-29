-- grouped

SELECT * FROM movie JOIN director ON movie.director_id = director.id;

SELECT director.name, movie.title FROM movie JOIN director ON movie.director_id = director.id;

SELECT director.name, movie.title FROM movie JOIN director ON director_id = director.id;

SELECT director.name, movie.title AS movie_title FROM movie JOIN director ON director_id = director.id;

SELECT * FROM
movie JOIN
director ON
director_id = director.id WHERE
movie.production_year > 2000;

SELECT * FROM
movie JOIN
director ON
director_id = director.id WHERE
director.name = 'Steven Spielberg';

SELECT title, production_year, director.name, director.birth_year AS born_in FROM
movie JOIN
director ON
director_id = director.id WHERE
(production_year - director.birth_year) < 40;

create database imdb;
use imdb;
select * from imdb_movies;
-- Which movie has the highest rating among the top-ranked movies?
select Title,Rating,R_ank
from imdb_movies
order by Rating,R_ank desc;
-- What is the total combined runtime of all movies in the list?
select sum(Runtime),Title
from imdb_movies
group by Title;
-- Which movies were released before the year 2000 and have a rating of 9 or higher?
select Title,Y_ear,Rating
from imdb_movies
where Y_ear<2000 and Rating >=9;
-- What is the average runtime of all movies with a rating of 9 or more?
select avg(Runtime),Title,Rating
from imdb_movies
where Rating >=9
group by Title,Rating;
-- Can you list all the movies sorted by their release year in ascending order?
select Title,Y_ear
from imdb_movies
order by Y_ear asc;
-- How many movies in the list have the word "Godfather" in their title?
SELECT Title
FROM imdb_movies
WHERE Title LIKE '%Godfather%';



CREATE DATABASE Movies;
Use Movies;
CREATE TABLE movie_title
            (movie_ID int PRIMARY KEY,
            movie_title varchar (50),
            release_year int (50));
 

INSERT INTO movie_title
(movie_ID, movie_title, release_year)
VALUES
(1, "Coco", 2017),
(2, "Gifted", 2017),
(3, "A Dog's Purpose", 2017),
(4, "Inside Out", 2015),
(5, "Descendents", 2015),
(6, "Hotel Transylvania 2", 2015),
(7, "Frozen", 2013),
(8, "Monsters University", 2013),
(9, "The Croods", 2013),
(10, "The Legend of la Llorona", 2011),
(11, "Barbie: Princess Charm School", 2011),
(12, "Soul Surfer", 2011),
(13, "Up", 2009),
(14, "Coraline", 2009),
(15, "The Princess and the Frog", 2009);

Use Movies;
CREATE TABLE heroes
            (movie_ID int (50),
            hero_name varchar (50),
            hero_gender varchar (50));
​
INSERT INTO heroes
(movie_ID, hero_name, hero_gender)
VALUES
(1, "Miguel", "m"),
(2, "Mary", "f"),
(3, "Ethan", "m"),
(4, "Riley", "f"),
(4, "Joy", "f"),
(5, "Evie", "f"),
(6, "Mavis", "f"),
(6, "Dennis", "m"),
(7, "Elsa", "f"),
(8, " Mike", "m"),
(9, "Guy", "m"),
(10, "Leo", "m"),
(11, "Blair", "f"),
(12, "Alana", "f"),
(13, "Russell", "m"),
(14, " Coraline", "f"),
(15, " Tiana", "f");
​
Use Movies;
CREATE TABLE villain
            (movie_ID int (50),
            villain_name varchar (50),
            villain_gender varchar (50));
		
INSERT INTO villain
(movie_ID, villain_name, villain_GENDER)
VALUES
(1, "Ernesto", "m"),
(2, null, null),
(3, "Todd", "m"),
(4, null, null),
(5, null, null),
(6, "Samuel", "f"),
(7, "Hans", "m"),
(8, "Randall", "m"),
(9, null, null),
(10, null, null),
(11, null, null),
(12, null, null),
(13, null, null),
(14, null, null),
(15, null, null);



​
Use Movies;
CREATE TABLE genre
            (movie_ID int (50),
            movie_genre varchar (50));
            
INSERT INTO genre
(movie_ID, movie_genre)
VALUES
(1, "family"),
(2, "family"),
(3, "family"),
(4, "family"),
(5, "family"),
(6, "family"),
(7, "family"),
(8, "family"),
(9, "family"),
(10, "family"),
(11, "family"),
(12, "family"),
(13, "family"),
(14, "family"),
(15, "family");


-- Insertion of Foreign Keys
​
Use Movies;
ALTER TABLE heroes
ADD FOREIGN KEY (movie_ID)
REFERENCES movie_title(movie_ID);
​
Use Movies;
ALTER TABLE villain
ADD FOREIGN KEY (movie_ID)
REFERENCES movie_title(movie_ID);
​
Use Movies;
ALTER TABLE genre
ADD FOREIGN KEY (movie_ID)
REFERENCES movie_title(movie_ID);
​
-- Queries to retrieve information from the database
​
-- 1) Find all female heroes to analyse these names on Pandas:
​
Use Movies;
SELECT
h.movie_ID,
h.hero_name,
h. hero_gender,
m. movie_title
FROM heroes h
RIGHT JOIN movie_title m
ON
h.movie_ID = m.movie_ID
WHERE hero_gender = "f";
​
-- 2) Find all female villains to analyse these names on Pandas:
​
Use Movies;
SELECT
v.movie_ID,
v.villain_name,
v.villain_gender,
m. movie_title
FROM villain v
RIGHT JOIN movie_title m
ON
v.movie_ID = m.movie_ID
WHERE villain_gender = "f";
​
-- 3) Find all male heroes to analyse these names on Pandas:
            
Use Movies;
SELECT
h.movie_ID,
h.hero_name,
h. hero_gender,
m. movie_title
FROM heroes h
RIGHT JOIN movie_title m
ON
h.movie_ID = m.movie_ID
WHERE hero_gender = "m";
​
-- 4) Find all female villains to analyse these names on Pandas:
​
Use Movies;
SELECT
v.movie_ID,
v.villain_name,
v.villain_gender,
m. movie_title
FROM villain v
RIGHT JOIN movie_title m
ON
v.movie_ID = m.movie_ID
WHERE villain_gender = "m"; 

 # 5)to select movie character name by year (heroes)
Use Movies;
SELECT
h.movie_ID,
h.hero_name,
h. hero_gender,
m. movie_title
FROM heroes h
RIGHT JOIN movie_title m
ON
h.movie_ID = m.movie_ID
WHERE release_year = "2009";

#6) Character names by year (villains)

Use Movies;
SELECT
v.movie_ID,
v.villain_name,
m. movie_title
FROM villain v
RIGHT JOIN movie_title m
ON
v.movie_ID = m.movie_ID
WHERE release_year = "2009"; 




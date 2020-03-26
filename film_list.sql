-- 1
SELECT count(fid) FROM film_list AS 'Number of films'
FROM film_list;

-- 2
SELECT title, description
FROM film_list
ORDER BY length(description) DESC
LIMIT 10;

-- 3
SELECT title
FROM film_list
ORDER BY length ASC
LIMIT 1;

-- 4
SELECT title, description
FROM film_list
WHERE actors
LIKE '%CAMERON STREEP%';

-- 5
SELECT catagory AS "genre",
avg(price) AS "average price",
avg(length) AS "average length"
FROM film_list
GROUP BY catagory;

-- 6
SELECT rating,
count(rating)
FROM film_list
GROUP BY rating;

-- 7
UPDATE film_list
SET catagory = 'international'
WHERE catagory = 'foreign';

-- 8
DELETE FROM film_list
WHERE catagory = 'childerns';

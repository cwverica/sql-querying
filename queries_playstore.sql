-- Comments in SQL Start with dash-dash --

-- Command #1 --
 SELECT * FROM analytics WHERE id = 1880;

-- Command #2 --
 SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- Command #3 --
 SELECT category, COUNT(*) FROM analytics GROUP BY category;

-- Command #4 --
 SELECT * FROM analytics ORDER BY reviews DESC LIMIT 5;

-- Command #5 --
 SELECT * FROM analytics HAVING MAX(reviews) WHERE rating >= 4.8;

-- Command #6 --
 SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;

-- Command #7 --
 SELECT app_name, price, rating FROM analytics HAVING MAX(price) WHERE rating < 3;

-- Command #8 --
 SELECT app_name, rating FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

-- Command #9 --
 SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

-- Command #10 --
 SELECT app_name FROM analytics WHERE price BETWEEN .10 AND 1.00 ORDER BY reviews DESC LIMIT 10;

-- Command #11 --
 SELECT app_name FROM analytics HAVING MIN(last_updated);

-- Command #12 --
 SELECT app_name FROM analytics HAVING MAX(price);

-- Command #13 --
 SELECT SUM(reviews) AS total_reviews FROM analytics;

-- Command #14 --
 SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;

-- Command #15 --
 SELECT app_name, reviews, min_installs, reviews / min_installs as proportion
 FROM analytics
 WHERE min_installs > 100000
 HAVING MAX(reviews / min_installs);


-- Active: 1730905934188@@127.0.0.1@3306@restaurant_db
-- 1) View the menu_items table and write a query to find the number of items on the menu
SELECT * FROM menu_items;

SELECT COUNT(DISTINCT menu_item_id) AS dish_count FROM menu_items;

-- 2) What are the least and most expensive items on the menu?
-- Most Expensive
SELECT * FROM menu_items ORDER BY menu_items.price DESC LIMIT 5;

-- Least Expensive
SELECT * FROM menu_items ORDER BY menu_items.price ASC LIMIT 5;

-- 3) How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?
-- Italian dishes count
SELECT COUNT(*) AS dish_count
FROM menu_items
WHERE
    category = 'Italian';

-- Least and most expensive Italian dishes
SELECT *
FROM menu_items
WHERE
    category = 'Italian'
ORDER BY menu_items.price ASC;

SELECT *
FROM menu_items
WHERE
    category = 'Italian'
ORDER BY menu_items.price DESC;

-- 4) How many dishes are in each category? What is the average dish price within each category?
-- Dishes in each category
SELECT category, COUNT(*) AS dish_count
FROM menu_items
GROUP BY
    category;

--Average price in each category
SELECT
    category,
    COUNT(*) AS dish_count,
    ROUND(AVG(price), 2) AS average_price
FROM menu_items
GROUP BY
    category;
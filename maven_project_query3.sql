-- Active: 1730905934188@@127.0.0.1@3306@restaurant_db

-- 1) Combine the menu_items and order_details tables into a single table
CREATE TEMPORARY TABLE comb_orders_menu AS (
    SELECT *
    FROM order_details
        JOIN menu_items ON order_details.item_id = menu_items.menu_item_id
);

-- 2) What were the least and most ordered items? What categories were they in?
-- Least ordered items
SELECT
    category,
    item_name,
    COUNT(item_id) AS item_count
FROM comb_orders_menu
GROUP BY
    item_name,
    category
ORDER BY item_count;

-- Most ordered items
SELECT
    category,
    item_name,
    COUNT(item_id) AS item_count
FROM comb_orders_menu
GROUP BY
    item_name,
    category
ORDER BY item_count DESC;

-- 3) What were the top 5 orders that spent the most money?
SELECT order_id, SUM(price) AS order_total
FROM comb_orders_menu
GROUP BY
    order_id
ORDER BY order_total DESC
LIMIT 5;

-- 4) View the details of the highest spend order. Which specific items were purchased?
SELECT
    order_id,
    order_date,
    order_time,
    order_details_id,
    item_id,
    item_name,
    category,
    price
FROM comb_orders_menu
WHERE
    order_id = 440;

-- Items by category for order 440
SELECT category, COUNT(DISTINCT item_id) AS item_count
FROM comb_orders_menu
WHERE
    order_id = 440
GROUP BY
    category;

-- Most ordered items for order 440
SELECT
    category,
    item_name,
    COUNT(item_id) AS item_count
FROM comb_orders_menu
WHERE
    order_id = 440
GROUP BY
    item_name,
    category
ORDER BY item_count DESC;

-- 5) BONUS: View the details of the top 5 highest spend orders
SELECT
    order_id,
    order_date,
    order_time,
    order_details_id,
    item_id,
    item_name,
    category,
    price
FROM comb_orders_menu
WHERE
    order_id IN (440, 2075, 1957, 330, 2675)
ORDER BY order_id;

-- Items by category for order 440, 2075, 1957, 330, 2675
SELECT category, COUNT(DISTINCT item_id) AS item_count
FROM comb_orders_menu
WHERE
    order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY
    category;

-- Most ordered items for order 440, 2075, 1957, 330, 2675
SELECT
    item_name,
    category,
    COUNT(item_id) AS item_count
FROM comb_orders_menu
WHERE
    order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY
    item_name,
    category
ORDER BY item_count DESC;


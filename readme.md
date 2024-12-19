## Background

Taste of the World Cafe, a restaurant that has diverse menu offerings and serves generous portions, has launched a new menu at the start of the year.

They would like to better understand how this menu has performed with their customers.

## Project Objectives

In this project, I'll dig into the customer data to see which products are doing well with their customers and which ones aren't doing so well. I'll also analyse what their top customers seem to like best in this new menu.

Some of the questions we're trying to answer are:

- What were the least and most ordered items? What categories were they in?
- What do the highest spend orders look like? Which items did they buy and how much did they spend?
- Which cuisines should we focus on developing more menu items for based on the data?  

## The Data

I'll be working with a database that contains 2 tables, menu_items and order_details. This database contains data for the first quarter of 2023.

The *menu_items* table contains the following fields:

- `menu_item_id`: Unique ID of a menu item
- `item_name`: Name of a menu item
- `category`: Category or type of cuisine of the menu item
- `price`: Price of the menu item (US Dollars $)

The fields for the *order_details* table are:

- `order_details_id`: Unique ID of an item in an order
- `order_id`: ID of an order
- `order_date`: Date an order was put in (MM/DD/YY)
- `order_time`: Time an order was put in (HH:MM:SS AM/PM)
- `item_id`: Matches the menu_item_id in the menu_items table  

<p>&nbsp;</p>

## Findings

**1. What are the least and most expensive items on the menu?**

The least expensive item is the Edamame, with a price of $5. Edamame is an Asian dish, and 3 of the 5 least expensive items are American dishes.

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/5a098528-3bf4-4e28-8e53-ecb93ae2b98b.png)The most expensive item is the Shrimp Scampi, with a price of $19.95. This dish belongs to the Italian category. 3 out of the top 5 most expensive items belong to this category.

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/1a53d9b4-16a0-4ac7-b983-9f86aef4f2f5.png)

**2. How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?**

There are 9 Italian dishes on the menu, and their prices range from $14.95 to $19.95.
The most expensive Italian dish is the Shrimp Scampi, which is also the most expensive dish on the menu. The least expensive Italian dish is the Spaghetti.



**3. How many dishes are in each category? What is the average dish price within each category?**

The menu contains 6 American dishes, with an average price of $10.07. Next are Asian dishes with 8 different dishes, averaging $13.48. The 9 Mexican dishes on the menu have an average price of $11.80. The Italian category also contains 9 dishes but is the most expensive category with an average price of $16.75.

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/8133bafe-0252-4069-ab1d-63a26a9a3b5c.png)

**4. How many orders were made within the collection period? How many items were ordered?**

From January to March 2023, the restaurant had a total of 5,370 orders and a total of 12,097 items ordered. These orders totaled $159,217.90.



**5. Which orders had the most number of items?**

There are 7 orders at the top with a total of 14 items ordered. These orders were: 4305, 443, 440, 2675, 330, 3473, 1957. I'll explore more of these later on.



**6. How many orders had more than 12 items?**

A total of 20 orders had over 12 items.



**7. What were the least and most ordered items? What categories were they in?**

The Chicken Tacos, in the Mexican category, were the least ordered item, purchased only 123 times.

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/c07b91ed-57b6-4991-9786-d6b44386844f.png)

The Hamburger (American dish) was the most ordered item with 622 purchases.

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/30ba01ee-d695-4076-8edc-65aceec96fc7.png)

**8. What were the top 5 orders that spent the most money?**

The top 5 orders by amount spent, range from $185.10 to $192.15.



**9. View the details of the highest spend order. Which specific items were purchased?**

The top order is #440. There were 6 different Italian dishes ordered, whereas they also ordered 2 Mexican, 2 American, and 2 Asian dishes.

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/50ee9ca0-fc8d-4b57-8152-58ea1ce3d370.png)

We can see the details of the ordered dishes in the table below:

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/7423abc1-cdaa-4d99-b8ec-af3a9518fcf1.png)

**10. View the details of the top 5 highest spend order. Which specific items were purchased?**

The top 5 highest spend orders consumed a varied number of dishes of different categories, as seen in the image below.

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/68e0e407-6778-4ab7-97f4-b0ea1488941e.png)

Italian and Mexican dishes seem to be the most popular for the highest spend orders with Eggplant Parmesan, Steak Burrito, and Chicken Parmesan being the top 3 dishes ordered in this group.

![undefined](https://mavenanalyticsio-upload-bucket-prod.s3.us-west-2.amazonaws.com/198519495/projects/2f38079f-a2b7-47c5-8876-33f6c5dc7ba5.png)<p>&nbsp;</p>

## Conclusions

- American and Asian dishes seem to be the most popular overall. However, amongst the highest spend orders, Italian and Mexican dishes also do well. Italian dishes are on average more expensive, so despite the lower volume, they still bring considerable revenue. It would be good to explore more how individual dishes are performing to see if it's worth keeping them on the menu. For instance, Chicken Tacos, Potstickers, Cheese Lasagna, Steak Tacos, and Cheese Quesadillas are the least ordered items overall during this period, so they should be candidates to be removed from the menu.

- Since American dishes are popular but they are also the cheapest dishes on average, it might be worth considering bringing other similar American dishes that are priced a bit higher to see if customers that like this type of dishes are also interested in them.
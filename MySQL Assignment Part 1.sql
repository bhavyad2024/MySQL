-- Query 1
USE sql_store;
SELECT * FROM  customers;



/* Task 1: Using the Query 2 you created change the points to reads times by 10 and plus 100. 
Record your results in your word document 
Change the Query 2 code to create a discount factor so the table now shows a discount header 
and changing the (point + 10) *100 */
SELECT last_name,first_name,points, (points+10)*100 AS discount_factor
FROM customers;


/* Task 2: Write a SQL query to return all the products in our database in the result set.
 I want you to show columns; name, unit price, and new column called new price which is based on
 this expression, (unit price * 1.1 ). So what you are doing is increasing the product price of each by 10%. 
So with the query we want all the products the original price and the new  price.  */
SELECT  name, unit_price, (unit_price*1.1) AS new_price FROM products;


/* Task 3: In this task create a new query to find all the customers
 with a birth date of > '1990-01-01' */
 SELECT * FROM  customers
 WHERE birth_date > '1990-01-01';

/* Task 4 : Select sql_inventory.
Write a query to find out the name of the product with most amount in stock. */
SELECT name, quantity_in_stock  FROM products
ORDER BY quantity_in_stock DESC LIMIT 1;


/* Task 5:Select sql_inventory.
Write a query to find out the name of the most expensive product. */
SELECT name, unit_price FROM products
ORDER BY unit_price DESC LIMIT 1;


/* Task 6: Select sql_store.
Write a query to find out the first name, last name, address and the birthdate of the oldest customer. */
USE sql_store;
select first_name,last_name,address,birth_date from customers
ORDER BY birth_date ASC LIMIT 1;



























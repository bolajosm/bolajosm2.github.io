select *
from product
select *
FROM Customer


--all customers and their purchased products:
SELECT c.customer_id, p.Product_name
FROM Customer c
JOIN product p ON c.Customer_id = p.Customer_id;

-- the total number of purchases:
SELECT COUNT(*) AS total_purchases
FROM Customer;

--Calculate the total revenue:
SELECT SUM(p.price * c.quantity) AS total_revenue
FROM customer c
JOIN product p ON c.product_id = p.product_id

---all products with their respective prices:
SELECT Product_name, price
FROM product ;

--Find the most expensive product:
SELECT Product_name , max(price) AS MAX_PRICE
from Customer as c
join product AS P
on c.product_id=P.product_id
GROUP BY Product_name

--List all female customers and their purchased products:
select c.customer_id , p.Product_name, c.gender
from Customer as c
join product as p
on c.customer_id=p.customer_id
where c.gender = 'female'

--Find the youngest customer who made a purchase:
SELECT c.customer_id,  MIN(c.age) AS min_age
FROM Customer as c
group by c.customer_id
order by min_age asc

SELECT c.customer_id, COUNT(c.product_id) AS purchase_count
FROM Customer c
GROUP BY c.customer_id
ORDER BY purchase_count asc

--List all products purchased by customers aged 30 or older:
select c.customer_id, p.product_name
from Customer as c
join product as p
on c.customer_id=p.customer_id
where age >= 30

--average product price
Select avg(p.price) as averagepp
from product as p


--find total number of male customers
select COUNT(DISTINCT c.customer_id) as total_male_customers
from Customer as c
where c.gender = 'male'

--Customer that  are yet to make purchase 
select c.customer_id
from Customer as c
join product as p
on c.customer_id = p.customer_id
where p.product_id is Null


--Calculate the total quantity sold for each product:

SELECT p.product_name, SUM(c.quantity) AS total_quantity_sold
FROM product p
JOIN customer c ON p.product_id = c.product_id
GROUP BY p.product_name;

--List the top 5 products with the highest total sales quantity:
SELECT top 5 p.product_name, SUM(c.quantity) AS total_quantity_sold
FROM product p
JOIN customer c ON p.product_id = c.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC

--List the customers who made purchases using a specific payment method (e.g., 'Credit Card')
select c.customer_id
from Customer as c
join product as p
on c.customer_id = p.customer_id
where p.payment_method = 'credit card'

--Find the total revenue for each payment method
SELECT p.payment_method, SUM(p.price * c.quantity) AS total_revenue
FROM product p
JOIN customer c ON p.product_id = c.product_id
GROUP BY p.payment_method
order by  p.payment_method asc

--List the products purchased by customers who are under 25 years old:
SELECT c.customer_id, p.product_name, c.gender, c.age
FROM customer c
JOIN product p ON c.customer_id = p.customer_id
WHERE c.age < 25;

--Find the product that generated the highest revenue:
SELECT top 1 p.product_name, SUM(p.price * c.quantity) AS total_revenue
FROM product p
JOIN customer c ON p.product_id = c.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC













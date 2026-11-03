CREATE DATABASE sales_analysis;

USE sales_analysis;

show tables;

-- How many total customers/transactions are in the dataset?
select count(*) as total_records
from customer_history;

-- What is the total sales revenue?
select
sum(`Purchase Amount (USD)`)as total_sales
from customer_history;

-- What is the average purchase amount?
select
round(avg(`Purchase Amount (USD)`), 2) as average_purchase
from customer_history;

-- which category generates the highest sales?
select Category,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by Category
order by total_sales desc
limit 5;

-- which category has the highest average purchase amount?
select Category,
round(avg(`Purchase Amount (USD)`), 2) as average_purchase
from customer_history
group by Category
order by average_purchase desc
limit 5;

-- which category has the highest average rating?
select Category,
round(avg(`Review Rating`), 2) as average_rating
from customer_history
group by Category
order by average_rating desc
limit 5;

-- what are the top 10 best-selling products?
select `Item Purchased`,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by `Item Purchased`
order by total_sales desc
limit 5;

-- which product has the lowest sales?
select `Item Purchased`,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by `Item Purchased`
order by total_sales asc
limit 1;

-- which gender generates higher sales?
select Gender,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by Gender
order by total_sales desc;

-- which gender has a higher average purchase amount?
select Gender,
round(avg(`Purchase Amount (USD)`), 2) as average_purchase
from customer_history
group by Gender
order by average_purchase desc;

-- what is the average age of customers?
select
round(avg(Age), 2) as average_age
from customer_history;

-- which location generates the highest sales?
select Location,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by Location
order by total_sales desc
limit 5;

-- what are the top 10 locations by sales?
select Location,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by Location
order by total_sales desc
limit 10;

-- do subscribed customers generate higher sales?
select `Subscription Status`,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by `Subscription Status`
order by total_sales desc;

-- do subscribed customers have a higher average purchase amount?
select `Subscription Status`,
round(avg(`Purchase Amount (USD)`), 2) as average_purchase
from customer_history
group by `Subscription Status`
order by average_purchase desc;

-- do discounts increase customer spending?
select `Discount Applied`,
round(avg(`Purchase Amount (USD)`), 2) as average_purchase
from customer_history
group by `Discount Applied`
order by average_purchase desc;

-- how many customers use promo codes?
select `Promo Code Used`,
count(*) as customer_count
from customer_history
group by `Promo Code Used`;

-- do customers who use promo codes spend more?
select `Promo Code Used`,
round(avg(`Purchase Amount (USD)`), 2) as average_purchase
from customer_history
group by `Promo Code Used`
order by average_purchase desc;

-- which payment method is most popular?
select `Payment Method`,
count(*) as usage_count
from customer_history
group by `Payment Method`
order by usage_count desc
limit 1;

-- which payment method generates the highest sales?
select `Payment Method`,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by `Payment Method`
order by total_sales desc
limit 1;

-- which shipping method is most popular?
select `Shipping Type`,
count(*) as order_count
from customer_history
group by `Shipping Type`
order by order_count desc
limit 1;

-- which shipping method generates the highest sales?
select `Shipping Type`,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by `Shipping Type`
order by total_sales desc
limit 1;

-- which purchase frequency generates the highest sales?
select `Frequency of Purchases`,
sum(`Purchase Amount (USD)`) as total_sales
from customer_history
group by `Frequency of Purchases`
order by total_sales desc
limit 1;

-- which customers spend more than the average purchase amount?
select `Customer ID`, `Purchase Amount (USD)`
from customer_history
where `Purchase Amount (USD)` >
      (
          select avg(`Purchase Amount (USD)`)
          from customer_history
      )
order by `Purchase Amount (USD)` desc;

-- who is the highest-spending customer?
select `Customer ID`, `Purchase Amount (USD)`
from customer_history
order by `Purchase Amount (USD)` desc
limit 1;

-- which customers are high-value customers?
select `Customer ID`, `Purchase Amount (USD)`,
case
when `Purchase Amount (USD)` >= 80 then 'high value'
when `Purchase Amount (USD)` >= 50 then 'medium value'
else 'low value'
end as customer_segment
from customer_history;

-- are repeat customers spending more than one-time customers?
select
case
when `Previous Purchases` > 0 then 'repeat customer'
else 'one-time customer'
end as customer_type,
count(*) as customer_count,
round(avg(`Purchase Amount (USD)`), 2) as average_purchase
from customer_history
group by customer_type;

-- what percentage of transactions come from repeat customers?
select
round(sum(case when `Previous Purchases` > 0 then 1 else 0 end) * 100.0 / count(*), 2) as repeat_customer_percentage
from customer_history;

-- how many high-value transactions were made?
select
count(*) as high_value_transactions
from customer_history
where `Purchase Amount (USD)` >= 80;

-- what is the average purchase amount for customers aged 40 and above?
select
round(avg(`Purchase Amount (USD)`), 2) as average_purchase
from customer_history
where Age >= 40;






































































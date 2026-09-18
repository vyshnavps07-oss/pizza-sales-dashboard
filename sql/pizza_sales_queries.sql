use pizza_db;
select * from pizza_sales;

------- KPIS
----- KPI 1 Total revenue
select sum(total_price) AS Total_Revenue from pizza_sales;

--------- KPI 2 Average Order Value 
 select sum(total_price) / count(distinct order_id) As Avg_order_Value from pizza_sales;
 
 ------ KPI 3 Total pizza sold
 Select sum(quantity) As Total_Pizza_Sold from pizza_sales;

------ KPI 4  Total orders
select count(distinct order_id) As Total_Orders from pizza_sales;

----- KPI 5 Average Pizzas per order 
Select round(sum(quantity) / count(distinct order_id), 2) As Avg_pizza_per_Order from pizza_sales;

---- charts

----- CHART 1 Daily trend for total orders 
SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y'));

----  CHART 2 HOURLY TREND
SELECT 
    HOUR(STR_TO_DATE(order_time, '%H:%i:%s')) AS order_hour,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY HOUR(STR_TO_DATE(order_time, '%H:%i:%s'))
ORDER BY HOUR(STR_TO_DATE(order_time, '%H:%i:%s'));

---- chart 3 percentage of sales by pizza category
select pizza_category,sum(total_price) as total_sales, sum(total_price) *100 /
 (select sum(total_price) from pizza_sales) as PCT from pizza_sales
group by pizza_category;

---- chart 4 percentage of sales by pizza size
select pizza_size,sum(total_price) as total_sales, round(sum(total_price) *100 /
 (select sum(total_price) from pizza_sales),2) as PCT from pizza_sales
group by pizza_size
order by PCT DESC;

----- chart 5 total pizzas sold by pizza category
select pizza_category, sum(quantity) as total_pizza_sold from pizza_sales
group by pizza_category;

----- chart 6 top 5 best sellers by total pizza sold
select  pizza_name,sum(quantity) as total_pizza_sold 
from pizza_sales 
group by pizza_name
order by total_pizza_sold DESC LIMIT 5 ;

---- chart 7 bottom 5 worst sellers by total pizza sold 
select  pizza_name,sum(quantity) as total_pizza_sold 
from pizza_sales 
group by pizza_name
order by total_pizza_sold ASC limit 5 ;

use e_commerce;
-- viewing all table columns
select * 
from e_commerce;

-- Count total orders
select 
count(*)  as Total_Orders
from e_commerce ;

-- calculating the Total Sales, average , min and max order value
select 
round(sum(TotalPrice), 2) as total_sales,
round(avg(TotalPrice), 2) as average_order,
min(TotalPrice) as minimum_order,
max(TotalPrice) as maximum_order
from e_commerce ;

-- Sales by product (GROUP BY)
select 
product,
 COUNT(OrderID) AS Total_Orders,
sum(totalprice) as sales_per_product,
    AVG(TotalPrice) AS Avg_Order
from e_commerce
group by Product 
order by sum(totalprice) desc ;

-- Order status breakdown (GROUP BY + COUNT)
select 
orderstatus,
 COUNT(OrderID) AS Orders_count,
sum(totalprice) as Revenue,
    ROUND(COUNT(OrderID) * 100.0 / 1200, 2) AS Percentage_count
FROM e_commerce
group by orderstatus 
order by Percentage_count desc ;

--  Filter only cancelled and returned orders (WHERE)
select 
*
from e_commerce
where orderstatus= 'Cancelled' or orderstatus= 'Returned' 
order by totalprice desc
;

-- Revenue by referral source
select 
ReferralSource,
 COUNT(OrderID) AS Total_Orders,
AVG(TotalPrice) AS Avg_Order_value,
sum(totalprice) as Revenue_per_ref
from e_commerce
group by ReferralSource
order by Revenue_per_ref desc ;

-- Revenue by payment method
select 
PaymentMethod,
 COUNT(OrderID) AS Total_Orders,
sum(totalprice) as Revenue_per_ref
from e_commerce
group by PaymentMethod
order by Revenue_per_ref desc ;

-- Quarterly revenue trend
SELECT 
  year(Date) AS Year,
    CASE 
        WHEN MONTH(Date) IN ('01','02','03') THEN 'Q1'
        WHEN MONTH(Date) IN ('04','05','06') THEN 'Q2'
        WHEN MONTH(Date) IN ('07','08','09') THEN 'Q3'
        ELSE 'Q4'
    END AS Quarter,
    COUNT(OrderID) AS Orders,
    SUM(TotalPrice) AS Revenue
FROM e_commerce
GROUP BY Year, Quarter
ORDER BY Year, Quarter;

-- Outlier detection (high value orders)
SELECT 
    OrderID, Product, Quantity,
    UnitPrice, TotalPrice, OrderStatus
FROM e_commerce
WHERE TotalPrice > 3330.41
ORDER BY TotalPrice DESC;

--  Coupon vs no coupon comparison (HAVING)
SELECT 
    CASE WHEN CouponCode = 'N/A' THEN 'No Coupon' 
         ELSE 'Coupon Used' END AS Coupon_Status,
    COUNT(OrderID) AS Orders,
    ROUND(AVG(TotalPrice), 2) AS Avg_Order_Value,
    SUM(TotalPrice) AS Total_Revenue
FROM e_commerce
GROUP BY Coupon_Status;

-- Top 10 highest value orders
SELECT 
    OrderID, Product, Quantity,
    UnitPrice, TotalPrice, OrderStatus
FROM e_commerce
ORDER BY TotalPrice DESC
LIMIT 10;

-- Products with average order value above $1,000 (HAVING)
SELECT 
    Product,
    COUNT(OrderID) AS Orders,
    ROUND(AVG(TotalPrice), 2) AS Avg_Order_Value
FROM e_commerce
GROUP BY Product
HAVING AVG(TotalPrice) > 1000
ORDER BY Avg_Order_Value DESC;





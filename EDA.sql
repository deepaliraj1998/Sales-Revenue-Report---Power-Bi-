SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
    Sub_Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY Sub_Category
ORDER BY Total_Sales DESC
LIMIT 3;

SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    ROUND(SUM(Sales),2) AS Monthly_Sales
FROM Orders
GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY
    Year,
    Month;

SELECT
    YEAR(Order_Date) AS Year,
    CONCAT('Q',QUARTER(Order_Date)) AS Quarter,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM Orders
GROUP BY
    YEAR(Order_Date),
    QUARTER(Order_Date)
ORDER BY
    Year,
    Quarter;

 SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM Orders
GROUP BY State
ORDER BY Total_Sales DESC;   
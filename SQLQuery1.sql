SELECT
    YEAR([Order_Date]) AS Sales_Year,
    MONTH([Order_Date]) AS Sales_Month,
    SUM(d.Amount) AS Monthly_Revenue,
    COUNT(DISTINCT o.[Order_ID]) AS Order_Volume
FROM Orders o
INNER JOIN Details d
    ON o.[Order_ID] = d.[Order_ID]
GROUP BY
    YEAR([Order_Date]),
    MONTH([Order_Date])
ORDER BY
    Sales_Year,
    Sales_Month;


    SELECT TOP 3
    YEAR([Order_Date]) AS Sales_Year,
    MONTH([Order_Date]) AS Sales_Month,
    SUM(d.Amount) AS Revenue
FROM Orders o
INNER JOIN Details d
    ON o.[Order_ID] = d.[Order_ID]
GROUP BY
    YEAR([Order_Date]),
    MONTH([Order_Date])
ORDER BY Revenue DESC;

SELECT
    YEAR([Order_Date]) AS Sales_Year,
    MONTH([Order_Date]) AS Sales_Month,
    SUM(d.Profit) AS Monthly_Profit
FROM Orders o
INNER JOIN Details d
    ON o.[Order_ID] = d.[Order_ID]
GROUP BY
    YEAR([Order_Date]),
    MONTH([Order_Date])
ORDER BY
    Sales_Year,
    Sales_Month;



    SELECT
    Category,
    SUM(Amount) AS Revenue
FROM Details
GROUP BY Category
ORDER BY Revenue DESC;
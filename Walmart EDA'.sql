/*                           3. Exploratory Data Analysis (EDA)                                       */

-- Que1: Retrieve all columns for sales made in a specific branch (e.g., Branch 'A').
SELECT * FROM walmart_sales
WHERE branch = 'A';

-- Que2: Find the total sales for each product line.
SELECT product_line, 
       SUM(total) AS total_sales
FROM walmart_sales
GROUP BY product_line;

-- Que3: List all sales transactions where the payment method was 'Cash'.
SELECT Payment,
	COUNT(Invoice_ID) AS total_invoice,
	SUM(total) AS Total_Sales
	FROM walmart_sales
WHERE payment = 'Cash'
GROUP BY Payment;

-- Que4: Calculate the total gross income generated in each city.
SELECT City, SUM(gross_income) AS Total_Gross_Income 
FROM walmart_sales 
GROUP BY City
ORDER BY Total_Gross_Income DESC;


-- Que5: Find the average rating given by customers in each branch.
SELECT Branch, AVG(Rating) AS Average_Rating 
FROM walmart_sales 
WHERE Rating IS NOT NULL 
GROUP BY Branch
ORDER BY Average_Rating DESC;

-- Que6: Determine the total quantity of each product line sold.
SELECT Product_Line, SUM(Quantity) AS Total_Quantity
FROM Walmart_sales
GROUP BY Product_Line
ORDER BY Total_Quantity DESC;

-- Que7: List the top 5 products by unit price.
SELECT Product_line, Unit_price 
FROM walmart_sales 
ORDER BY Unit_price DESC 
LIMIT 5;


-- Que8: Find sales transactions with a gross margin percentage greater than 30%.
SELECT * FROM walmart_sales
WHERE gross_margin_percentage > 30;

-- Que9: Retrieve sales transactions that occurred on weekends.
SELECT TO_CHAR(date, 'Day') AS day_name,
	COUNT(Invoice_ID) AS Total_Invoice,
	SUM(Total) AS Total_Sales
FROM Walmart_Sales
WHERE TRIM(TO_CHAR(date, 'Day')) IN ('Saturday', 'Sunday')
GROUP BY day_name;

-- Que10: Calculate the total sales and gross income for each month.
WITH monthly_sales_income AS (
	SELECT EXTRACT(MONTH FROM date) AS Month_ID,
	   TO_CHAR(date, 'MONTH') AS Month_Name,
	   SUM(Total) AS Total_Sales, 
       SUM(gross_income) AS Total_Gross_Income 
FROM walmart_sales
GROUP BY Month_ID, Month_Name
ORDER BY Month_ID
)
SELECT Month_Name, Total_Sales, Total_Gross_Income
FROM monthly_sales_income;


-- Que11: Find the number of sales transactions that occurred after 6 PM.
SELECT COUNT(*) AS Transactions_After_6PM
FROM walmart_sales
WHERE Time > '18:00:00';

-- Que12: List the sales transactions that have a higher total than the average total of all transactions.
SELECT * FROM walmart_sales
WHERE total > (SELECT AVG(total) FROM walmart_sales);

-- Que13: Find customers who made more than 5 purchases in a single month.
SELECT Customer_Type, 
	EXTRACT(MONTH FROM date) AS Month_ID,
    COUNT(invoice_id) AS Total_Purchase
FROM walmart_sales
GROUP BY Customer_Type, Month_ID
HAVING COUNT(invoice_id) > 5
ORDER BY month_id;

-- Que14: Calculate the cumulative gross income for each branch by date.
SELECT Branch, Date, 
       SUM(gross_income) OVER (PARTITION BY Branch ORDER BY Date) AS Cumulative_Gross_income
FROM walmart_sales
ORDER BY Date, Branch;


-- Que15: Find the total COGS for each customer type in each city.
SELECT City, Customer_Type, SUM(Cogs) AS Total_Cogs
FROM walmart_sales
GROUP BY City, Customer_Type
ORDER BY Total_Cogs DESC;
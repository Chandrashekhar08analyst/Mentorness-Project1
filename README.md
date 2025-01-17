# Walmart Sales Data Analysis

## Table of Contents
1. [Project Overview](#project-overview)
2. [Dataset Description](#dataset-description)
3. [Analysis Performed](#analysis-performed)
4. [Key Insights](#key-insights)
5. [Recommendations](#recommendations)
6. [Technologies Used](#technologies-used)
7. [Conclusion](#conclusion)

---

## Project Overview
The **Walmart Sales Data Analysis** project explores transaction data to identify key business insights and opportunities. The primary goal is to analyze the sales performance, customer behavior, and identify trends across different branches, products, and locations to enhance Walmart's sales strategy.

---

## Dataset Description
The dataset used contains sales transactions from Walmart. Each record provides detailed information about customer purchases, product lines, payment methods, and more. The key fields in the dataset include:

- **Invoice_ID**: Unique identifier for each transaction
- **Branch**: Store branch (A, B, or C)
- **City**: Location of the store
- **Customer_Type**: Member or Normal customer
- **Gender**: Gender of the customer
- **Product_Line**: Category of the purchased product
- **Unit_Price**: Price of each unit
- **Quantity**: Number of units purchased
- **Total**: Total amount after tax
- **Payment**: Payment method (Cash, Credit Card, Ewallet)
- **COGS**: Cost of Goods Sold
- **Gross_Income**: Income generated after deducting COGS
- **Rating**: Customer satisfaction rating (1 to 10)

---

## Analysis Performed
We conducted the following analyses on the dataset:

1. Total sales for each product line.
2. Analysis of sales transactions based on payment methods (Cash, Credit Card, Ewallet).
3. Total gross income generated by each city.
4. Average customer rating per branch.
5. Total quantity sold for each product line.
6. Sales trends on weekends (Saturday and Sunday).
7. Monthly sales and gross income patterns.
8. Transactions occurring after 6 PM.
9. Customers with more than 5 purchases in a single month.
10. Top products by unit price and quantity sold.

---

## Key Insights

1. **Product Line Performance**: 
   - **Food and Beverages** generated the highest sales, followed by **Sports and Travels**.
   
2. **Top Cities by Gross Income**:
   - **Naypyitaw** had the highest gross income, followed by **Yangon** and **Mandalay**.
   
3. **Branch Performance**:
   - Branch **C** received the highest average customer rating, followed by **A** and **B**.
   
4. **Weekend Sales**:
   - Sales on **Saturday** were the highest, with 164 transactions, followed by **Sunday** with 133.

5. **Monthly Sales**:
   - January recorded the highest sales (116,292), followed by March (109,456).

---

## Recommendations

1. **Focus on Top Product Lines**:
   - Increase promotions for **Food and Beverages**, **Sports and Travels**, and **Electronic Accessories** to drive sales growth in these high-performing categories.

2. **Localized Campaigns in Top Cities**:
   - Develop location-based marketing strategies in **Naypyitaw**, **Yangon**, and **Mandalay** to maximize revenue and enhance customer engagement.

3. **Weekend-Specific Promotions**:
   - Introduce special offers on **Saturdays** and **Sundays**, as these are high-sales days, to further increase weekend revenue.

4. **Customer Loyalty Programs**:
   - Enhance loyalty programs for **Member** customers and incentivize repeat purchases by offering personalized discounts and exclusive benefits.

---

## Technologies Used

- **SQL**: For querying and analyzing the sales data.
- **PostgreSQL**: Database used for SQL queries.

---

## Conclusion

This analysis provides critical insights into Walmart's sales trends, customer preferences, and product performance. By leveraging these findings and implementing the recommended strategies, Walmart can optimize its sales processes, improve customer satisfaction, and enhance overall business performance.

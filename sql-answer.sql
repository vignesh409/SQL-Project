—-1.UNIQUE CUSTOMERS AND INVOICE ID ?
SELECT COUNT(DISTINCT Invoice_ID) as unique_customer,
COUNT(Invoice_ID) as Number_invoice_customer
FROM `practicebigquery-382915.sales_sql.sales`;




—2.Purchase count by Gender ?(Recommendation :Group by )

–Using Where clause:

SELECT COUNT(Gender) AS Males,
 FROM `practicebigquery-382915.sales_sql.sales`
 WHERE Gender="Male";


--Using Group clause:
SELECT Gender,COUNT(Gender) AS Gender_count,
 FROM `practicebigquery-382915.sales_sql.sales`
 GROUP BY GENDER;


—-3.Most Popular branches and high sales Branch?


SELECT Branch,COUNT(Branch) AS Populatiry_of_branch,
 FROM `practicebigquery-382915.sales_sql.sales`
 GROUP BY Branch
 ORDER BY Branch ASC;


—-4.Total sales of city and Highest profitable city?


SELECT City,SUM(Round(gross_income)) As Total_sales,
 FROM `practicebigquery-382915.sales_sql.sales`
 GROUP BY City
 ORDER BY Total_sales DESC;


—-5.Customer Type and Count ?
SELECT CUSTOMER_TYPE,COUNT(Customer_type) AS Type,
 FROM `practicebigquery-382915.sales_sql.sales`
 GROUP BY Customer_type
 ORDER BY Type DESC;


—-6.Most profitable type and total_income from customer ?
SELECT CUSTOMER_TYPE,COUNT(Customer_type) AS Type,
SUM(Round(gross_income)) as Profitable_Type 
 FROM `practicebigquery-382915.sales_sql.sales`
 GROUP BY Customer_type
 ORDER BY Type DESC;


—-7.Most sales and income 


SELECT CUSTOMER_TYPE,COUNT(Customer_type) AS Type,
SUM(Round(gross_income)) as Profitable,SUM(ROUND(Total)) as Total_sales
 FROM `practicebigquery-382915.sales_sql.sales`
 GROUP BY Customer_type
 ORDER BY Type DESC;
—-8.Productline wise total_sales and profit and count?

SELECT product_line,count(product_line) as Totals,
SUM(ROUND(Total)) as Total_sales_With_Tax,
SUM(Round(gross_income)) as Total_profit
 FROM `practicebigquery-382915.sales_sql.sales`
 GROUP BY Product_line
 ORDER BY Totals DESC;

—-9.Payment type count?

SELECT Payment,Count(Payment) as Totals
 FROM `practicebigquery-382915.sales_sql.sales`
 GROUP BY Payment
 ORDER BY Totals DESC;

—-10.Rating ?
SELECT Branch,City,customer_Type,Gender,Rating
 FROM `practicebigquery-382915.sales_sql.sales`
 Order by Rating DESC;

—-11.Total Income based on product line?
SELECT Product_line,SUM(cogs) as Total_cogs,SUM(Gross_income) as Total_income
 FROM `practicebigquery-382915.sales_sql.sales`
 Group by Product_line
 Order by Total_cogs DESC;
 






















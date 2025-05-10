-- Query to categorize products based on the product price

SELECT 
	[ProductID], -- selects unique product identifier for each product
	[ProductName], -- selects product name
	--[Category], -- not including category because only one category is present
	[Price], -- selects the price of product

	-- Case statememt to categorize the product into price categories: low,medium,high
	CASE 
		WHEN Price < 50 THEN 'Low' -- if price less than 50 , categorized as low
		WHEN Price bETWEEN 50 AND 200 THEN 'Medium' -- if price in range 50-200, categorized as medium
		ELSE 'High' -- if price is greater than 200 categorized as high
	END AS PriceCategory  -- declared pricecategory name of the new column
	
FROM dbo.products; -- specifies the table from which to select


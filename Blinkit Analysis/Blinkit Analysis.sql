SELECT 
  ROUND(SUM([Total_Sales]),0) AS Total_Sales
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned];


    SELECT 
  ROUND(AVG([Total_Sales]),0) AS AVG_Sales
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned];


  SELECT 
  COUNT(*) AS  No_of_Orders
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned];


   SELECT 
  ROUND(AVG([Rating]),1) AS AVG_Rating
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned];


  SELECT   [Item_Fat_Content]
  ,ROUND(SUM([Total_Sales]),0) AS Total_Sales
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned]
  GROUP BY [Item_Fat_Content]
  ORDER BY Total_Sales DESC;



  SELECT   [Item_Type]
  ,ROUND(SUM([Total_Sales]),0) AS Total_Sales
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned]
  GROUP BY [Item_Type]
  ORDER BY Total_Sales DESC;


  SELECT  [Outlet_Location_Type],
   [Item_Fat_Content]
  ,ROUND(SUM([Total_Sales]),0) AS Total_Sales
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned]
  GROUP BY [Item_Fat_Content] ,[Outlet_Location_Type]
  ORDER BY [Outlet_Location_Type] DESC;



    SELECT   [Outlet_Establishment_Year]
  ,ROUND(SUM([Total_Sales]),0) AS Total_Sales
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned]
  GROUP BY [Outlet_Establishment_Year]
  ORDER BY [Outlet_Establishment_Year] ;


   SELECT   
  [Outlet_Size],
  ROUND(SUM([Total_Sales]), 0) AS Total_Sales,
  ROUND(
    100.0 * SUM([Total_Sales]) / SUM(SUM([Total_Sales])) OVER (),
    2
  ) AS Sales_Percentage
FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned]
GROUP BY [Outlet_Size]
ORDER BY Total_Sales DESC;







   SELECT   [Outlet_Location_Type]
  ,ROUND(SUM([Total_Sales]),0) AS Total_Sales
  FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned]
  GROUP BY [Outlet_Location_Type]
  ORDER BY Total_Sales DESC;


  SELECT 
  Outlet_Type, 
  ROUND(SUM(Total_Sales), 0) AS Total_Sales,
  ROUND(AVG(Total_Sales), 0) AS Avg_Sales,
  COUNT(*) AS No_Of_Items,
  ROUND(AVG(Rating), 2) AS Avg_Rating,
  ROUND(AVG(Item_Visibility), 2) AS Item_Visibility
FROM [yassin].[dbo].[BlinkIT Grocery Data cleaned]
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;




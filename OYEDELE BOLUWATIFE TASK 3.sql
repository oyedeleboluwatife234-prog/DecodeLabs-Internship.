CREATE DATABASE DataAnalytics

USE [Dataset for Data Analytics]
SELECT OrderID, Product, TotalPrice FROM [Dataset for Data Analytics];
SELECT COUNT(*) AS TotalOrders FROM [Dataset for Data Analytics];

SELECT SUM(TotalPrice) AS TotalRevenue FROM [Dataset for Data Analytics];
SELECT AVG(TotalPrice) AS AverageOrderValue FROM [Dataset for Data Analytics];
SELECT Product,SUM([TotalPrice]) AS Revenue FROM [Dataset for Data Analytics] GROUP BY Product
ORDER BY Revenue DESC;
SELECT SUM(CAST([TotalPrice] AS DECIMAL(10,2))) AS TotalRevenue FROM [Dataset for Data Analytics]
SELECT Product,SUM(Quantity) AS TotalUnitsSold FROM [Dataset for Data Analytics] GROUP BY Product 
ORDER BY TotalUnitsSold DESC;

ALTER TABLE [Dataset for Data Analytics] ALTER COLUMN[TotalPrice] DECIMAL(10,2);

SELECT [OrderStatus], COUNT(*) AS NumberOfOrders FROM [Dataset for Data Analytics] GROUP BY
[OrderStatus] ORDER BY NumberOfOrders DESC;
SELECT [OrderStatus],SUM([TotalPrice]) AS Revenue FROM [Dataset for Data Analytics] GROUP BY
[OrderStatus] ORDER BY Revenue DESC;

SELECT [PaymentMethod], COUNT(*) AS UsageCount FROM [Dataset for Data Analytics] GROUP BY
[PaymentMethod] ORDER BY UsageCount DESC;
SELECT TOP 10 OrderID,Product,[ItemsinCart] FROM [Dataset for Data Analytics] ORDER BY 
[ItemsinCart] DESC;
SELECT COUNT(*) AS CouponOrders FROM [Dataset for Data Analytics] WHERE [CouponCode]<> 
'NoCoupon';

SELECT [ReferralSource], SUM([TotalPrice]) AS Revenue FROM [Dataset for Data Analytics]
GROUP BY [ReferralSource] ORDER BY Revenue DESC;
SELECT YEAR(TRY_CONVERT(date,[Date],103)) AS SalesYear,MONTH(TRY_CONVERT(date,[Date],103)) 
AS SalesMonth,SUM([TotalPrice]) AS Revenue FROM [Dataset for Data Analytics]
GROUP BY YEAR (TRY_CONVERT(date,[Date],103)), MONTH(TRY_CONVERT(date,[DATE],103)) 
ORDER BY SalesYear, SalesMonth;






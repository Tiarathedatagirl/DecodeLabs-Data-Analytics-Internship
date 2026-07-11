-- Display all records from the Orders table
SELECT *
FROM Orders

-- Display selected columns from the Orders table
SELECT
	OrderID,
	CustomerID,
	Product,
	Quantity,
	TotalPrice
FROM Orders

SELECT *
FROM Orders


-- Display all delivered orders
SELECT OrderID,
       CustomerID,
       Product,
       TotalPrice,
       OrderStatus
FROM Orders
WHERE OrderStatus = 'Delivered'

-- Display all orders sorted by total price in descending order
SELECT OrderID,
       CustomerID,
       Product,
       TotalPrice
FROM Orders
ORDER BY TotalPrice DESC

-- Count the number of orders by payment method
SELECT PaymentMethod,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY PaymentMethod

-- Calculate the total sales for each payment method
SELECT PaymentMethod,
       SUM(TotalPrice) AS TotalSales
FROM Orders
GROUP BY PaymentMethod

-- Calculate the average order value by payment method
SELECT PaymentMethod,
       AVG(TotalPrice) AS AverageOrderValue
FROM Orders
GROUP BY PaymentMethod


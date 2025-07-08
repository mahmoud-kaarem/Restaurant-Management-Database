--Task: Find Reservations for a Specific Customer
--this query will list customer's Reservations' details
SELECT 
	Customer_Name,
	ReservationDateTime,
	PartySize,
	Status 
FROM  
	Reservations
join 
	Customers
ON Customers.CustomerID = Reservations.CustomerID
WHERE Customer_Name = 'Sara Mostafa' -- we can change the name to any customer name we want to check for him/her


--Task: List Available Tables for a Party Size
-- this query will display the table reservation detailes in a specific date for a specific party size if the table is available for this conditions
SELECT
	TableNumber,
	Capacity,
	Location,
	ReservationID,
	PartySize,Status
FROM
	Tables
LEFT JOIN Reservations 
ON Tables.TableID = Reservations.TableID
WHERE ReservationDateTime = '2025-06-27 18:00:00.000' --or any other date we can choose
	AND Status NOT IN ('Confirmed', 'Seated')
	AND Capacity >= 4 --or any number or members or party size we want


--Task: Menu Items by Category and Price
SELECT 
	ItemName,
	price,
	CategoryName
FROM 
	MenuItems
JOIN MenuCategories
ON MenuItems.CategoryID = MenuCategories.CategoryID
WHERE 
	MenuCategories.CategoryName = 'Main Courses'
ORDER BY
	Price DESC


--Task: Busiest Staff Member
SELECT TOP 1 
	Staff_Name,
	count(OrderID) AS number_of_orders
FROM 
	Staff
JOIN Orders ON Orders.StaffID = Staff.StaffID
where 
	Staff.Role = 'Waiter'
GROUP BY 
	Staff_Name
ORDER BY 
	number_of_orders DESC


--Task: Total Revenue by Menu Category
 SELECT 
	CategoryName , 
	SUM(Quantity * PriceAtOrder) AS category_revenue 
 FROM 
	OrderItems
 JOIN MenuItems	ON MenuItems.ItemID = OrderItems.ItemID
 JOIN MenuCategories ON MenuItems.CategoryID = MenuCategories.CategoryID
 GROUP BY 
	CategoryName
 ORDER BY 
	category_revenue DESC


--Task: Find Customers with Multiple No-Shows(more than 2 no shows)
SELECT 
	Customer_Name , 
	COUNT(*) AS Number_Of_NoShows
FROM 
	Customers
JOIN Reservations ON Reservations.CustomerID = Customers.CustomerID
where 
	Reservations.Status = 'No-Show'
GROUP BY 
	Customer_Name
HAVING 
	COUNT(*) > 2




--Task: Update Menu Item Availability
UPDATE 
	MenuItems
SET 
	IsAvailable = 0 --(0 for unavailable and 1 for available)
WHERE 
	ItemName = 'Chocolate Cake'



--Task: Calculate Average Party Size Per Table Location
SELECT 
	Location , 
	AVG(PartySize) AS average_PartySize
FROM 
	Reservations
JOIN Tables ON Tables.TableID = Reservations.TableID
GROUP BY 
	Location



--Task: Delete Old Canceled Reservations
DELETE FROM 
	Reservations
WHERE Status IN ('Canceled', 'No-Show')
  AND ReservationDateTime < DATEADD(MONTH, -6, GETDATE()); --the reservations from 6 months ago  



--Task: Find Orders with No Associated Reservation
SELECT *
FROM 
	Orders
WHERE 
	ReservationID IS NULL










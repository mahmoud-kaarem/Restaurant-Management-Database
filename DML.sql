--Insert at least 10 rows into Customers
INSERT INTO Customers (Customer_Name, PhoneNumber, Email)
VALUES 
    ('Ahmed Mohamed', '01010006666', 'ahmed.mohamed@example.com'),
    ('Sara Mostafa', '01123455555', 'sara.mostafa@example.com'),
    ('Mohamed Ali', '01235765778', 'mohamed.ali@example.com'),
    ('Fatma Youssef', '01012434676', 'fatma.youssef@example.com'),
    ('Youssef Hossam', '01864523424', 'youssef.hossam@example.com'),
    ('Nourhan Amr', '01254645764', 'nourhan.amr@example.com'),
    ('Mostafa Ibrahim', '01088888888', 'mostafa.ibrahim@example.com'),
    ('Dina Magdy', '01156576567', 'dina.magdy@example.com'),
    ('Khaled Tamer', '01272121212', 'khaled.tamer@example.com'),
    ('Mai Adel', '01046534342', 'mai.adel@example.com');

--Insert at least 5 rows into Staff
INSERT INTO Staff (Staff_Name, Role, HireDate)
VALUES 
    ('Kareem Hassan', 'Manager', '2022-05-10'),
    ('Omar Elsaid', 'Chef', '2023-01-15'),
    ('Laila Farouk', 'Waiter', '2024-03-08'),
    ('Nader Younis', 'Host', '2023-09-20'),
    ('Rania Mahmoud', 'Waiter', '2022-11-30');

--Insert at least 10 rows into Tables
INSERT INTO Tables (TableNumber, Capacity , Location)
VALUES 
	(1, 3, 'Window'),
	(2, 4, 'Window'),
	(3, 6, 'Patio'),
	(4, 2, 'Patio'),
	(5, 1, 'Indoor'),
	(6, 5, 'Indoor'),
	(7, 4, 'Bar'),
	(8, 3, 'Bar'),
	(9, 4, 'Bar'),
	(10, 2, 'Indoor');

--Insert at least 4 rows into MenuCategories
INSERT INTO MenuCategories(CategoryName)
VALUES
	('Appetizers'),
	('Main Courses'),
	('Desserts'),
	('Beverages');

--Insert at least 15 rows into MenuItems
INSERT INTO MenuItems (ItemName, Description, Price, CategoryID, IsAvailable)
VALUES 
('Spring Rolls', 'Crispy vegetarian rolls served with sweet chili sauce.', 45.00, 1, 1),
('Garlic Bread', 'Toasted bread with garlic butter and herbs.', 35.00, 1, 1),
('Caesar Salad', 'Romaine lettuce with Caesar dressing, croutons, and parmesan.', 50.00, 1, 1),
('Grilled Chicken Breast', 'Juicy grilled chicken served with mashed potatoes and vegetables.', 120.00, 2, 1),
('Beef Steak', 'Grilled beef steak served with pepper sauce and fries.', 185.00, 2, 1),
('Spaghetti Bolognese', 'Pasta with beef bolognese sauce and grated cheese.', 95.00, 2, 1),
('Vegetable Curry', 'Mixed vegetables in a creamy coconut curry sauce.', 90.00, 2, 1),
('Cheeseburger', 'Grilled beef patty with cheese, lettuce, tomato, and onion.', 80.00, 2, 1),
('Chocolate Cake', 'Rich chocolate sponge with fudge icing.', 60.00, 3, 1),
('Vanilla Ice Cream', 'Two scoops of creamy vanilla ice cream.', 35.00, 3, 1),
('Tiramisu', 'Classic Italian dessert with layers of coffee-soaked biscuits and mascarpone.', 70.00, 3, 1),
('Lemon Tart', 'Tangy lemon filling in a buttery crust.', 55.00, 3, 1),
('Fresh Orange Juice', 'Freshly squeezed orange juice.', 25.00, 4, 1),
('Espresso', 'Strong black coffee served in a small cup.', 20.00, 4, 1),
('Iced Latte', 'Chilled espresso with milk and ice.', 30.00, 4, 1);

--Insert at least 20 rows into Reservations

INSERT INTO Reservations (ReservationDateTime, PartySize, Status, CustomerID, TableID)
VALUES 
('2025-07-07 19:00', 2, 'Confirmed', 1, 1),
('2025-07-07 20:00', 4, 'Seated', 2, 2),
('2025-07-06 18:30', 3, 'Completed', 3, 3),
('2025-07-05 21:00', 2, 'Completed', 4, 4),
('2025-07-07 17:45', 1, 'Confirmed', 5, 5),
('2025-07-06 19:30', 4, 'Canceled', 6, 6),
('2025-07-05 20:00', 5, 'Completed', 7, 6),
('2025-07-03 18:00', 4, 'Completed', 8, 7),
('2025-07-02 20:30', 3, 'No-Show', 9, 8),
('2025-07-01 19:00', 2, 'Completed', 10, 9),
('2025-06-30 18:45', 2, 'Completed', 1, 10),
('2025-06-29 20:00', 3, 'Confirmed', 2, 3),
('2025-06-28 19:15', 6, 'Seated', 3, 3),
('2025-06-27 18:00', 4, 'Canceled', 4, 7),
('2025-06-26 21:00', 3, 'No-Show', 5, 8),
('2025-06-25 20:30', 1, 'Completed', 6, 5),
('2025-06-24 19:00', 2, 'Completed', 7, 1),
('2025-06-23 18:30', 3, 'Completed', 8, 2),
('2025-06-22 21:15', 4, 'Completed', 9, 9),
('2025-06-21 19:45', 2, 'Confirmed', 10, 10);

--Insert at least 10 rows into Orders
INSERT INTO Orders (OrderDateTime, TotalAmount, OrderStatus, ReservationID, StaffID)
VALUES 
('2025-07-07 19:15', 250.00, 'Preparing', 1, 3),
('2025-07-07 20:30', 340.00, 'Served', 2, 3),
('2025-07-06 18:45', 420.00, 'Paid', 3, 2),
('2025-07-05 21:15', 180.00, 'Paid', 4, 2),
('2025-07-07 17:50', 95.00, 'Pending', 5, 4),
('2025-07-06 19:45', 310.00, 'Canceled', 6, 5),
('2025-07-05 20:20', 275.00, 'Paid', 7, 2),
('2025-07-03 18:10', 365.00, 'Paid', 8, 3),
('2025-07-02 20:40', 195.00, 'Preparing', 9, 4),
('2025-07-01 19:15', 240.00, 'Served', 10, 3);

--Insert at least 25 rows into OrderItems
INSERT INTO OrderItems (OrderID, ItemID, Quantity, PriceAtOrder)
VALUES 
(1, 1, 2, 45.00),
(1, 4, 1, 120.00),
(1, 14, 2, 20.00),
(2, 2, 1, 35.00),
(2, 5, 1, 185.00),
(2, 10, 2, 35.00),
(3, 3, 2, 50.00),
(3, 6, 1, 95.00),
(3, 11, 1, 70.00),
(3, 13, 2, 25.00),
(4, 8, 1, 80.00),
(4, 9, 2, 60.00),
(5, 7, 1, 90.00),
(5, 15, 1, 30.00),
(6, 5, 1, 185.00),
(6, 2, 1, 35.00),
(6, 12, 1, 55.00),
(7, 4, 2, 120.00),
(7, 10, 2, 35.00),
(8, 6, 1, 95.00),
(8, 11, 1, 70.00),
(8, 14, 1, 20.00),
(9, 1, 1, 45.00),
(9, 13, 2, 25.00),
(10, 3, 1, 50.00),
(10, 5, 1, 185.00);

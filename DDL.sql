USE Restaurant_Management;

CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY IDENTITY(1,1),
	Customer_Name NVARCHAR(100) NOT NULL ,
	PhoneNumber NVARCHAR(20) UNIQUE,
	Email NVARCHAR(100) UNIQUE
); 

CREATE TABLE Staff (
	StaffID INT PRIMARY KEY IDENTITY(1,1),
	Staff_Name NVARCHAR(100) NOT NULL ,
	Role NVARCHAR(50) ,
	HireDate DATE DEFAULT CAST(GETDATE() AS DATE),
	CONSTRAINT chk_role CHECK (Role IN ('Waiter','Chef','Manager','Host'))
);

CREATE TABLE Tables (
	TableID INT PRIMARY KEY IDENTITY(1,1),
	TableNumber NVARCHAR(10) NOT NULL UNIQUE,
	Capacity INT, CHECK (Capacity > 0) ,
	Location NVARCHAR(50)
);

CREATE TABLE Reservations (
	ReservationID INT PRIMARY KEY IDENTITY(1,1),
	ReservationDateTime DATETIME NOT NULL,
	PartySize INT,
	Status NVARCHAR(20),
	CONSTRAINT chk_reservation  CHECK (PartySize > 0 AND Status IN('Confirmed', 'Seated', 'Completed', 'Canceled', 'No-Show')),
	CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID) ON DELETE NO ACTION ON UPDATE NO ACTION ,
	TableID INT FOREIGN KEY REFERENCES Tables(TableID) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE MenuCategories (
	CategoryID INT PRIMARY KEY IDENTITY(1,1),
	CategoryName NVARCHAR(50) NOT NULL UNIQUE,
);

CREATE TABLE MenuItems (
	ItemID INT PRIMARY KEY IDENTITY(1,1),
	ItemName NVARCHAR(100) NOT NULL UNIQUE,
	Description NVARCHAR(500),
	Price DECIMAL(8, 2) NOT NULL CHECK (Price > 0 ),
	CategoryID INT FOREIGN KEY REFERENCES MenuCategories(CategoryID) ON DELETE NO ACTION ON UPDATE NO ACTION,
	IsAvailable bit DEFAULT 1
);

CREATE TABLE Orders (
	OrderID INT PRIMARY KEY IDENTITY(1,1),
	OrderDateTime DATETIME DEFAULT CAST(GETDATE() AS DATETIME),
	TotalAmount DECIMAL(10, 2) CHECK (TotalAmount >= 0),
	OrderStatus  NVARCHAR(20) CHECK (OrderStatus IN ('Pending', 'Preparing', 'Served', 'Paid', 	'Canceled')),
	ReservationID INT FOREIGN KEY REFERENCES Reservations(ReservationID) ON DELETE NO ACTION ON UPDATE NO ACTION,
	StaffID INT FOREIGN KEY REFERENCES Staff(StaffID) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE OrderItems(
	OrderItemID INT PRIMARY KEY IDENTITY(1,1),
	OrderID INT FOREIGN KEY REFERENCES Orders(OrderID) ON DELETE NO ACTION ON UPDATE NO ACTION,
	ItemID INT FOREIGN KEY REFERENCES MenuItems(ItemID) ON DELETE NO ACTION ON UPDATE NO ACTION,
	Quantity INT CHECK (Quantity > 0),
	PriceAtOrder DECIMAL(8, 2) CHECK (PriceAtOrder > 0)
);

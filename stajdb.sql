-- Veritabaný seç
USE StajDB;
GO

-- Restaurant Tablosu
CREATE TABLE Restaurant (
    RestaurantID INT PRIMARY KEY IDENTITY(1,1),
    RestaurantName NVARCHAR(100) NOT NULL,
    Address NVARCHAR(200)
);
GO

-- RestaurantMenu Tablosu
CREATE TABLE RestaurantMenu (
    MenuID INT PRIMARY KEY IDENTITY(1,1),
    RestaurantID INT NOT NULL,
    MenuName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);
GO

-- Foreign Key Ýliþkisi
ALTER TABLE RestaurantMenu
ADD CONSTRAINT FK_RestaurantMenu_Restaurant
FOREIGN KEY (RestaurantID)
REFERENCES Restaurant(RestaurantID);
GO

-- Örnek Veri
INSERT INTO Restaurant (RestaurantName, Address)
VALUES ('Kanka Burger', 'Ýstanbul Kadýköy');

INSERT INTO RestaurantMenu (RestaurantID, MenuName, Price)
VALUES
(1, 'Cheeseburger', 150),
(1, 'Patates Kýzartmasý', 60),
(1,

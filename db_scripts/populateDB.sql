/****** POPULATE DATABASE TABLES******/
SET NOCOUNT ON; --surpress rows affected messages for performance

-- Dealers

INSERT INTO [dbo].[Dealers] (first_name, last_name, salary) VALUES ('Ion', 'Tiriac', 10000)
INSERT INTO [dbo].[Dealers] (first_name, last_name, salary) VALUES ('Andreea', 'Cava', 5000)
INSERT INTO [dbo].[Dealers] (first_name, last_name, salary) VALUES ('Mihai', 'Popa', 4500)
INSERT INTO [dbo].[Dealers] (first_name, last_name, salary) VALUES ('Tedi', 'Ionescu', 4000)
GO

-- Clients
INSERT INTO Clients
(dealerID, first_name, last_name, CNP, phone_number, email, country, city)
VALUES
( 2, 'Ana', 'Popescu', '2990830102826', '0723456789', 'anapopescu@example.com', 'Romania', 'Cluj-Napoca'),
( 1, 'Ion-Ion', 'Tiriac', '3300921002724', '0745678901', 'ion2tiriac@example.com', 'Romania', 'Bucuresti'),
( 3, 'Maria', 'Dumitru', '3881012002625', '0767890123', 'mariadumitru@example.com', 'Romania', 'Bucuresti'),
( 4, 'George', 'Petrescu', '3771103002526', '0789012345', 'georgepetrescu@example.com', 'Romania', 'Iasi'),
( 2, 'Vasile', 'Florescu', '2881204002427', '0701234567', 'vasileflorescu@example.com', 'Romania', 'Bucuresti'),
( 3, 'Mihai', 'Antonescu', '3991305002328', '0721234568', 'mihaiantonescu@example.com', 'Romania', 'Constanta'),
( 3, 'Elena', 'Voiculescu', '3001406002229', '0741234569', 'elenavoiculescu@example.com', 'Romania', 'Galati'),
( 4, 'Diana', 'Cristea', '3681507002130', '0761234570', 'dianacristea@example.com', 'Romania', 'Arad'),
( 2, 'Adrian', 'Neacsu', '3571608002031', '0781234571', 'adrianneacsu@example.com', 'Romania', 'Ploiesti'),
( 2,'Oana','Stoica','3461709001932','0701234572','oanastoica@example.com','Romania','Baia Mare'),
( 1, 'Juan', 'Lopez', '12345678A', '666777888', 'juanlopez@example.com', 'Spain', 'Madrid'),
( 1, 'Mario', 'Rossi', '12345678B', '333444555', 'mariorossi@example.com', 'Italy', 'Roma'),
( 2, 'Konstantinos', 'Papadopoulos', '12345678C', '210666777', 'konstantinospapadopoulos@example.com', 'Greece', 'Atenas'),
( 4, 'Mehmet', 'Yildiz', '12345678D', '555666777', 'mehmetyildiz@example.com', 'Turkiye', 'Ankara'),
( 3, 'Hans', 'Muller', '12345678E', '123456789', 'hansmueller@example.com', 'Germany', 'Berlin');
GO

-- Models
INSERT INTO Models
(brand, name, engine, horsepower, fuel, transmission)
VALUES
('BMW', '3 Series', '2.0L Turbocharged 4-Cylinder', 255, 'Gasoline', 'Manual'),
('Mercedes-Benz', 'C-Class', '2.0L Turbocharged 4-Cylinder', 248, 'Gasoline', 'Manual'),
('Audi', 'A4', '2.0L Turbocharged 4-Cylinder', 261, 'Gasoline', 'Automatic'),
('Volkswagen', 'Passat', '2.0L Turbocharged 4-Cylinder', 220, 'Gasoline', 'Manual'),
('Honda', 'Civic', '1.5L Turbocharged 4-Cylinder', 180, 'Gasoline', 'Automatic'),
('Toyota', 'Corolla', '2.0L 4-Cylinder', 158, 'Gasoline', 'Automatic'),
('Tesla', 'Model 3', 'Single Motor', 283, 'Electric', 'Automatic'),
('Ford', 'Mustang', '5.0L V8', 460, 'Gasoline', 'Manual'),
('Chevrolet', 'Camaro', '6.2L V8', 455, 'Gasoline', 'Automatic'),
('Dodge', 'Challenger', '6.4L HEMI V8', 485, 'Gasoline', 'Automatic'),
('Subaru', 'WRX STI', '2.5L Turbocharged Flat-4', 310, 'Gasoline', 'Manual'),
('Mazda', 'Mazdaspeed3', '2.3L Turbocharged 4-Cylinder', 273, 'Gasoline', 'Manual'),
('Nissan', 'GT-R', '3.8L Twin-Turbocharged V6', 565, 'Gasoline', 'Automatic'),
('Porsche', '911 Carrera S', '3.0L Twin-Turbocharged Flat-6', 450, 'Gasoline', 'Manual');
GO

-- Cars
INSERT INTO Cars
(modelID, color, year, price)
VALUES
(1, 'Black', 2023, 43000.00),
(2, 'Silver', 2022, 48000.00),
(3, 'White', 2021, 45000.00),
(4, 'Grey', 2020, 38000.00),
(5, 'Red', 2019, 33000.00),
(6, 'Blue', 2018, 28000.00),
(7, 'Teal', 2017, 25000.00),
(8, 'Yellow', 2016, 22000.00),
(9, 'Orange', 2015, 19000.00),
(10, 'Green', 2014, 16000.00),
(11, 'Purple', 2013, 13000.00),
(12, 'Maroon', 2012, 11000.00),
(13, 'Brown', 2011, 9000.00),
(14, 'Tan', 2010, 7000.00),
(14, 'Beige', 2009, 5000.00),
(4, 'Navy Blue', 2008, 3000.00),
(4, 'Gold', 2007, 1000.00),
(2, 'Silver Metallic', 2006, 43000.00),
(1, 'White Pearlescent', 2005, 43000.00),
(14, 'Black Cherry Metallic', 2004, 41000.00),
(13, 'Burgundy Red Pearl', 2003, 41000.00),
(9, 'Dark Slate Grey Metallic', 2002, 31000.00),
(10, 'Jet Black Pearl', 2001, 31000.00),
(8, 'Bright Silver Metallic', 2000, 2000.00),
(7, 'Pearly White', 1999, 2000.00);
GO

-- Features
INSERT INTO Features
(description)
VALUES
('Air Conditioning'),
('Power Windows'),
('Power Door Locks'),
('Cruise Control'),
('Power Steering'),
('Tilt Wheel'),
('AM/FM Stereo'),
('CD/MP3 (Single Disc)'),
('Premium Sound'),
('Navigation System'),
('Bluetooth Wireless'),
('Backup Camera'),
('Dual Air Bags'),
('Side Air Bags'),
('F&R Head Curtain Air Bags'),
('Knee Air Bags'),
('Heated Seats'),
('Dual Power Seats'),
('Leather'),
('Moon Roof'),
('Daytime Running Lights'),
('Fog Lights'),
('Alloy Wheels');
GO

-- Sales
INSERT INTO Sales
(carID, clientID, dealerID, date)
VALUES
(2, 1, 1, '2024-02-05'),
(4, 2, 2, '2022-05-02'),
(6, 3, 1, '2022-05-03'),
(8, 4, 2, '2022-05-04'),
(10, 5, 3, '2022-06-05'),
(12, 6, 1, '2022-06-06'),
(14, 7, 2, '2023-07-07'),
(16, 8, 3, '2023-07-08'),
(18, 9, 1, '2023-12-09'),
(20, 10, 2, '2023-12-10'),
(22, 11, 3, '2023-10-11'),
(24, 12, 1, '2023-10-12'),
(25, 13, 2, '2023-10-13'),
(23, 14, 3, '2023-04-14'),
(19, 15, 1, '2021-04-15'),
(17, 7, 1, '2021-03-16'),
(21, 8, 2, '2024-03-17'),
(14, 5, 3, '2024-03-18'),
(13, 10, 1, '2024-03-19'),
(11, 12, 2, '2024-03-20'),
(22, 11, 3, '2023-01-11'),
(24, 12, 1, '2023-01-12'),
(25, 13, 2, '2023-01-13'),
(23, 14, 3, '2023-07-14'),
(19, 15, 1, '2021-05-15'),
(17, 7, 1, '2021-05-16'),
(21, 8, 2, '2024-05-17'),
(14, 5, 3, '2024-08-18'),
(13, 10, 1, '2024-08-19'),
(2, 1, 1, '2022-02-05'),
(4, 2, 2, '2021-05-02'),
(6, 3, 1, '2021-05-03'),
(8, 4, 2, '2023-05-04'),
(10, 5, 3, '2023-06-05'),
(12, 6, 1, '2023-06-06'),
(14, 7, 2, '2024-07-07'),
(16, 8, 3, '2024-07-08'),
(18, 9, 1, '2024-12-09');

GO

-- Car_Features_Links
INSERT INTO Car_Features_Links
(carID, featureID)
VALUES
(1, 1), (1, 2), (1, 3), (15, 4), (15, 5), (15, 6), (16, 12), (16, 13), (16, 14), (16, 15), (17, 16), (17, 17), (1, 18), (1, 19), (18, 20), (18, 21), (1, 22), (1, 23), (19, 23),
(19, 1), (19, 2), (19, 3), (19, 4), (2, 7), (2, 8), (2, 9), (2, 10), (2, 11), (2, 12), (20, 13), (20, 14), (20, 15), (2, 16), (21, 17), (21, 18), (2, 19), (22, 20), (22, 22),
(23, 1), (23, 2), (23, 3), (23, 4), (3, 5), (3, 12), (3, 13), (3, 14), (3, 15), (3, 16), (3, 17), (24, 18), (24, 19), (24, 20), (24, 21), (24, 22), (24, 23), (3, 20), (3, 21),
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (24, 6), (24, 7), (5, 8), (5, 9), (25, 10), (25, 11), (25, 12), (25, 13), (25, 14), (25, 15), (5, 16), (5, 17), (5, 18), (5, 19), (5, 20),
(5, 21), (6, 2), (6, 3), (6, 1), (6, 22), (6, 23), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10), (6, 11), (6, 12), (6, 13), (7, 14), (7, 15), (7, 16), (7, 17), (7, 18),
(7, 19), (7, 20), (7, 21), (7, 22), (7, 23), (7, 4), (7, 5), (7, 1), (8, 2), (8, 3), (8, 4), (8, 5), (8, 6), (8, 7), (8, 8), (9, 9), (9, 10), (9, 11), (9, 12), (9, 13), (9, 14),
(9, 15), (9, 16), (9, 17), (10, 18), (10, 19), (10, 20), (10, 21), (10, 22), (10, 23), (11, 4), (11, 5), (11, 1), (11, 2), (11, 3), (12, 6), (12, 7), (13, 8), (13, 9), (13, 10),
(13, 11), (13, 12), (13, 13), (14, 14), (14, 15), (14, 16);
GO
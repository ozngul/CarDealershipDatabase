INSERT INTO dealerships (name, address, phone) VALUES
('Rex Motors', '123 Main St', '412-123-4567'),
('Rohrich', '456 Oak Ave', '412-987-6543'),
('1# Cochran', '789 Pine Rd', '412-333-1425');

INSERT INTO vehicles (VIN, make, model, color, year, price, sold) VALUES
('1HGBH41JXMN109186', 'Toyota', 'Camry', 'Red', 2020, 20000.00, FALSE),
('2HNYD18824H547294', 'Honda', 'Civic', 'Blue', 2021, 18000.00, FALSE),
('5NPE24AF8FH012345', 'Hyundai', 'Sonata', 'Black', 2019, 17000.00, TRUE),
('JH4KA9650MC012345', 'Acura', 'Legend', 'White', 1991, 5000.00, FALSE),
('3VWFE21C04M000001', 'Volkswagen', 'Jetta', 'Silver', 2022, 22000.00, FALSE),
('1FTSW21P06EB12345', 'Ford', 'F-150', 'Blue', 2023, 35000.00, FALSE),
('WDBUF56X48B123456', 'Mercedes-Benz', 'E350', 'Black', 2021, 29000.00, FALSE),
('4T1BF1FK2GU123456', 'Toyota', 'Corolla', 'White', 2020, 19000.00, FALSE),
('1HGCM82633A123456', 'Honda', 'Accord', 'Red', 2018, 16500.00, TRUE),
('1C4RJEBG1JC123456', 'Jeep', 'Grand Cherokee', 'Gray', 2024, 42000.00, FALSE);



INSERT INTO inventory (dealership_id, VIN) VALUES
(1, '1HGBH41JXMN109186'),
(1, '3VWFE21C04M000001'),  
(1, '1FTSW21P06EB12345'), 
(2, '2HNYD18824H547294'),
(2, '5NPE24AF8FH012345'),
(2, 'WDBUF56X48B123456'), 
(2, '4T1BF1FK2GU123456'), 
(3, 'JH4KA9650MC012345'),
(3, '1HGCM82633A123456'),
(3, '1C4RJEBG1JC123456'); 

INSERT INTO sales_contracts (VIN, dealership_id, buyer_name, sale_date, sale_price) VALUES
('5NPE24AF8FH012345', 2, 'John Doe', '2024-05-15', 16000.00);

INSERT INTO lease_contracts 
(VIN, dealership_id, lessee_name, lease_start, lease_end, monthly_payment) 
VALUES
('4T1BF1FK2GU123456', 2, 'Daniel Kim', '2024-06-10', '2025-06-10', 310.00),
('1HGCM82633A123456', 3, 'Lara Nguyen', '2024-06-15', '2025-06-15', 295.00),
('1C4RJEBG1JC123456', 3, 'Omar Yusuf', '2024-06-20', '2025-06-20', 480.00);




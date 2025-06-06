-- 1- Get all dealerships
SELECT * FROM dealerships;

-- 2- Find all vehicles for a specific dealership
SELECT v.*
FROM vehicles v
JOIN inventory i ON v.VIN = i.VIN
WHERE i.dealership_id = 2;

-- 3- Find a car by VIN
SELECT *
FROM vehicles
WHERE VIN = '2HNYD18824H547294';

-- 4- Find the dealership where a certain car is located, by VIN
SELECT d.name, d.address, d.phone
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = '2HNYD18824H547294';

-- 5- Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)
SELECT DISTINCT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.VIN = v.VIN
WHERE v.make = 'Toyota'
  AND v.model = 'Camry'
  AND v.color = 'Red';
  
-- 6- Get all sales information for a specific dealer for a specific date range  
  SELECT *
FROM sales_contracts
WHERE dealership_id = 2
  AND sale_date BETWEEN '2024-05-01' AND '2024-06-01';
  
  -- 7- List all lease contracts with a monthly payment greater than $400, including the vehicle's make and model
  SELECT lc.lease_id, lc.lessee_name, lc.monthly_payment,
       v.make, v.model, v.color, v.year
FROM lease_contracts lc
JOIN vehicles v ON lc.VIN = v.VIN
WHERE lc.monthly_payment > 400.00;
-- CREATE DATABASE CarDealership;
USE CarDealership;

CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);

CREATE TABLE vehicles (
    VIN VARCHAR(17) PRIMARY KEY, -- araç şasi numarası, eşsizdir
    make VARCHAR(30),
    model VARCHAR(30),
    color VARCHAR(20),
    year INT,
    price DECIMAL(10,2),
    sold BOOLEAN
);

CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE sales_contracts (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    dealership_id INT,
    buyer_name VARCHAR(50),
    sale_date DATE,
    sale_price DECIMAL(10,2),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id)
);


CREATE TABLE lease_contracts (
    lease_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    dealership_id INT,
    lessee_name VARCHAR(50),
    lease_start DATE,
    lease_end DATE,
    monthly_payment DECIMAL(10,2),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id)
);


SELECT * FROM dealerships;

SELECT v.*
FROM vehicles v
JOIN inventory i ON v.VIN = i.VIN
WHERE i.dealership_id = 1; -- bayi id'sini değiştirerek dene

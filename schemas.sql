create database ev_charging;

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    mobile_no VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    vehicle_no VARCHAR(20) NOT NULL,
    wallet_balance DECIMAL(10,2) NOT NULL
);

CREATE TABLE vehicle (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    battery_capacity DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE charging_station (
    station_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    operator VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    address VARCHAR(150) NOT NULL,
    rating DECIMAL(2,1),
    contact VARCHAR(15) NOT NULL
);

CREATE TABLE charging_port (
    port_id INT AUTO_INCREMENT PRIMARY KEY,
    station_id INT NOT NULL,
    port_type VARCHAR(50) NOT NULL,
    max_kw DECIMAL(6,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (station_id) REFERENCES charging_station(station_id)
);

CREATE TABLE charging_session (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    port_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    energy_kWh DECIMAL(6,2) NOT NULL,
    session_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id),
    FOREIGN KEY (port_id) REFERENCES charging_port(port_id)
);

CREATE TABLE billing (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    session_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    tax DECIMAL(5,2) NOT NULL,
    discount DECIMAL(5,2) NOT NULL,
    payment_status VARCHAR(20) NOT NULL,
    payment_mode VARCHAR(20) NOT NULL,
    FOREIGN KEY (session_id) REFERENCES charging_session(session_id)
);

CREATE TABLE PricingPlan (
    plan_id INT AUTO_INCREMENT PRIMARY KEY,
    station_id INT NOT NULL,
    cost_per_kWh DECIMAL(5,2) NOT NULL,
    parking_fee DECIMAL(6,2) NOT NULL,
    FOREIGN KEY (station_id) REFERENCES charging_station(station_id)
);

CREATE TABLE Feedback (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    station_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text VARCHAR(255),
    review_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (station_id) REFERENCES charging_station(station_id)
);
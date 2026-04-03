-- CUSTOMER (10 rows)
INSERT INTO customer VALUES
(1, 'Rahul Sharma', '9876543210', 'rahul@gmail.com', 'KA01AB1234', 2500.00),
(2, 'Priya Singh', '9123456780', 'priya@gmail.com', 'MH02CD5678', 1800.00),
(3, 'Amit Verma', '9988776655', 'amit@gmail.com', 'DL03EF9012', 3200.00),
(4, 'Sneha Reddy', '9012345678', 'sneha@gmail.com', 'KA05GH3456', 900.00),
(5, 'Karan Mehta', '9090909090', 'karan@gmail.com', 'GJ01IJ7890', 1500.00),
(6, 'Anjali Patel', '8888888888', 'anjali@gmail.com', 'MH04KL1122', 2700.00),
(7, 'Rohit Kumar', '7777777777', 'rohit@gmail.com', 'DL05MN3344', 1100.00),
(8, 'Pooja Nair', '6666666666', 'pooja@gmail.com', 'KL07OP5566', 3500.00),
(9, 'Vikas Gupta', '9555555555', 'vikas@gmail.com', 'UP09QR7788', 2000.00),
(10, 'Neha Jain', '9444444444', 'neha@gmail.com', 'RJ11ST9900', 1400.00);

-- VEHICLE (10 rows)
INSERT INTO vehicle VALUES
(1,1,'Tata','Nexon EV',40.00),
(2,2,'MG','ZS EV',50.30),
(3,3,'Hyundai','Kona Electric',39.20),
(4,4,'Tata','Tiago EV',24.00),
(5,5,'Mahindra','XUV400',39.40),
(6,6,'BYD','Atto 3',60.00),
(7,7,'Tata','Punch EV',25.00),
(8,8,'MG','Comet EV',17.30),
(9,9,'Hyundai','Ioniq 5',72.60),
(10,10,'Mahindra','eVerito',21.20);

-- CHARGING STATION (10 rows)
INSERT INTO charging_station VALUES
(1,'Tata Power Hub','Tata Power','Bangalore','Indiranagar',4.5,'0801234567'),
(2,'Ather Grid','Ather Energy','Bangalore','Whitefield',4.7,'0809876543'),
(3,'ChargeZone','ChargeZone','Mumbai','Andheri',4.2,'0221234567'),
(4,'Reliance EV','Reliance','Delhi','CP',4.0,'0112233445'),
(5,'EV Plug','EVRE','Hyderabad','Banjara Hills',4.3,'0409988776'),
(6,'Fortum Charge','Fortum','Pune','Hinjewadi',4.4,'0202233445'),
(7,'Statiq Station','Statiq','Delhi','Saket',4.1,'0116677889'),
(8,'Zeon Charging','Zeon','Chennai','OMR',4.6,'0441122334'),
(9,'Jio-bp Pulse','Jio-bp','Mumbai','BKC',4.2,'0229988776'),
(10,'BluSmart Hub','BluSmart','Gurgaon','Sector 29',4.3,'0124223344');

-- CHARGING PORT (12 rows)
INSERT INTO charging_port VALUES
(1,1,'CCS',50.00,'Available'),
(2,1,'Type2',22.00,'Occupied'),
(3,2,'Fast DC',60.00,'Available'),
(4,2,'Type2',22.00,'Available'),
(5,3,'CCS',50.00,'Occupied'),
(6,3,'CHAdeMO',40.00,'Available'),
(7,4,'CCS',50.00,'Available'),
(8,4,'Type2',22.00,'Occupied'),
(9,5,'Fast DC',60.00,'Available'),
(10,6,'CCS',50.00,'Available'),
(11,7,'Type2',22.00,'Available'),
(12,8,'CCS',50.00,'Occupied');

-- CHARGING SESSION (12 rows)
INSERT INTO charging_session VALUES
(1,1,1,1,'2026-04-01 10:00:00','2026-04-01 11:00:00',18.50,'Completed'),
(2,2,2,3,'2026-04-01 12:00:00','2026-04-01 13:30:00',25.00,'Completed'),
(3,3,3,5,'2026-04-02 09:00:00','2026-04-02 10:15:00',20.00,'Completed'),
(4,4,4,2,'2026-04-02 11:00:00','2026-04-02 11:45:00',10.00,'Completed'),
(5,5,5,6,'2026-04-02 14:00:00','2026-04-02 15:00:00',22.00,'Completed'),
(6,6,6,9,'2026-04-03 08:00:00','2026-04-03 09:00:00',15.00,'Completed'),
(7,7,7,7,'2026-04-03 10:30:00','2026-04-03 11:30:00',19.00,'Completed'),
(8,8,8,10,'2026-04-03 12:00:00','2026-04-03 13:00:00',21.00,'Completed'),
(9,9,9,11,'2026-04-04 09:00:00','2026-04-04 10:00:00',23.00,'Completed'),
(10,10,10,12,'2026-04-04 11:00:00','2026-04-04 12:00:00',17.00,'Completed'),
(11,1,1,4,'2026-04-05 08:00:00','2026-04-05 09:00:00',16.00,'Completed'),
(12,2,2,1,'2026-04-05 10:00:00','2026-04-05 11:00:00',18.00,'Completed');

-- BILLING (12 rows)
INSERT INTO billing VALUES
(1,1,370,18,20,'Paid','UPI'),
(2,2,500,25,30,'Paid','Card'),
(3,3,420,20,10,'Paid','Wallet'),
(4,4,200,10,5,'Paid','UPI'),
(5,5,440,22,15,'Pending','UPI'),
(6,6,300,15,10,'Paid','Card'),
(7,7,380,18,12,'Paid','UPI'),
(8,8,410,20,15,'Paid','Wallet'),
(9,9,460,23,20,'Paid','UPI'),
(10,10,350,18,10,'Paid','Card'),
(11,11,320,16,8,'Paid','Wallet'),
(12,12,360,18,12,'Paid','UPI');

-- PRICING PLAN (10 rows)
INSERT INTO PricingPlan (station_id,cost_per_kWh,parking_fee) VALUES
(1,20,50),(2,22,40),(3,18,30),(4,25,60),(5,19,35),
(6,21,45),(7,23,50),(8,20,30),(9,24,55),(10,22,40);

-- FEEDBACK (10 rows)
INSERT INTO Feedback (customer_id,station_id,rating,review_text,review_date) VALUES
(1,1,5,'Excellent service','2026-04-01'),
(2,2,4,'Fast charging','2026-04-01'),
(3,3,3,'Average','2026-04-02'),
(4,1,4,'Good location','2026-04-02'),
(5,4,2,'Slow service','2026-04-03'),
(6,5,5,'Very good','2026-04-03'),
(7,6,4,'Nice staff','2026-04-04'),
(8,7,3,'Okay experience','2026-04-04'),
(9,8,5,'Great infra','2026-04-05'),
(10,9,4,'Smooth process','2026-04-05');
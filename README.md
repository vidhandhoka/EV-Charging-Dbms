# ⚡ EV Charging Station & Billing System (DBMS Project)

## 📌 Overview
This project is a **Database Management System (DBMS)** designed to manage operations of an Electric Vehicle (EV) Charging Network. It simulates real-world functionalities such as customer management, vehicle tracking, charging sessions, billing, pricing plans, and feedback.

The system ensures efficient handling of EV charging data and provides insights into usage, revenue, and customer behavior.

---

## 🎯 Objectives
- Manage customer and vehicle information
- Track EV charging sessions and energy consumption
- Generate accurate billing with tax and discounts
- Maintain pricing plans for different stations
- Collect and analyze customer feedback

---

## 🗄️ Database Design

### Entities Included:
- **Customer**
- **Vehicle**
- **Charging Station**
- **Charging Port**
- **Charging Session**
- **Billing**
- **Pricing Plan**
- **Feedback**

✔ Fully normalized relational database  
✔ Proper use of Primary Keys & Foreign Keys  
✔ Maintains data integrity and relationships  

---

## ⚙️ Technologies Used
- **MySQL**
- **SQL (DDL, DML, Joins, Aggregations)**

---

## 📊 Key Features
- Real-world EV charging system simulation  
- Structured relational database design  
- Complex SQL queries using:
  - JOIN
  - GROUP BY
  - HAVING
  - Aggregations (SUM, AVG, COUNT)  
- Data analysis for:
  - Revenue generation  
  - Customer usage patterns  
  - Station performance  

---
## 📊 SQL Queries

### 1.Show all customers
```sql
SELECT * FROM customer;
```

### 2.Customers with wallet balance > 2000
```sql
SELECT name, wallet_balance 
FROM customer 
WHERE wallet_balance > 2000;
```

### 3.Customer with their vehicle details
```sql
SELECT c.name, v.brand, v.model 
FROM customer c 
JOIN vehicle v ON c.customer_id = v.customer_id;
```

### 4.Total energy consumed by each customer
```sql
SELECT c.name, SUM(s.energy_kWh) AS total_energy 
FROM customer c 
JOIN charging_session s ON c.customer_id = s.customer_id 
GROUP BY c.name;
```

### 5.Top 3 customers by total spending
```sql
SELECT c.name, SUM(b.total_amount) AS total_spent 
FROM customer c 
JOIN charging_session s ON c.customer_id = s.customer_id 
JOIN billing b ON s.session_id = b.session_id 
GROUP BY c.name 
ORDER BY total_spent DESC 
LIMIT 3;
```


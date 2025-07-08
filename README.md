# 🍽️ Restaurant Management System - SQL Project

## 📌 Project Overview

This project presents a **comprehensive Restaurant Management System** built using SQL Server. The system is designed to streamline daily operations such as handling customer reservations, managing staff, maintaining the menu, and processing orders.

This project simulates a real-world restaurant database and demonstrates database design, normalization, data population, and advanced querying capabilities.

---

## 🎯 Project Goals

- Design a normalized **relational schema** for a restaurant.
- Implement **SQL DDL** to define database structure with proper constraints.
- Populate the database using **SQL DML** with realistic data.
- Perform **advanced analytical queries** using SQL DQL to support business insights.

---

## 🛠️ Technologies Used

- **SQL Server** (T-SQL)
- **SSMS** (SQL Server Management Studio)
- **Relational Database Design Principles**

---

## 🗂️ Schema Overview

The project includes the following main entities:

- `Customers` – Stores customer info like name, phone, and email.
- `Staff` – Staff details including role and hire date.
- `Tables` – Info about each table including location and capacity.
- `Reservations` – Tracks table reservations by customers.
- `MenuCategories` – Menu item classification (e.g., Appetizers, Main Courses).
- `MenuItems` – Detailed menu items with availability status.
- `Orders` – Order records linked to staff and reservations.
- `OrderItems` – Details of each item in an order.

All foreign key relationships are enforced with `ON DELETE NO ACTION` and `ON UPDATE NO ACTION`.

---

## 📂 Project Structure

```text
📁 Restaurant-Management-System/
├── 📄 DDL.sql          # Schema creation with all tables and constraints
├── 📄 DML.sql          # Data population with realistic sample records
├── 📄 Queries.sql      # Analytical queries answering real business questions
├── 📄 README.md        # Project documentation

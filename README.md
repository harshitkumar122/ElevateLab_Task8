ElevateLabs_Task8

This task focuses on modularizing SQL logic by creating stored procedures and user-defined functions in a relational database. In this task, you will write reusable SQL blocks using CREATE PROCEDURE and CREATE FUNCTION, use parameters, and implement logic to make your SQL more maintainable.

🎯 Objective
Learn reusable SQL blocks and the ability to modularize SQL logic using procedures and functions.

🛠️ Tools
MySQL Workbench

DB Browser for SQLite (optional)

📁 Deliverables
task8.sql: A complete SQL file containing:

One stored procedure using CREATE PROCEDURE

One user-defined function using CREATE FUNCTION

Parameter usage and logic inside procedures/functions

Sample data to demonstrate procedure and function output

🧠 Guide
Use CREATE PROCEDURE and CREATE FUNCTION to define reusable logic

Add input parameters to pass dynamic values

Use SQL joins and filters within procedures

Use simple arithmetic or expressions in functions

Demonstrate output using CALL and SELECT queries

🧾 File Description
The SQL script includes:

📄 Schema: EcommerceDB
Tables created:

Customers: customer_id, name, email

Products: product_id, name, price

Orders: order_id, customer_id, product_id, order_date, quantity

Relationships via foreign keys:

Orders.customer_id → Customers.customer_id

Orders.product_id → Products.product_id

✅ Outcome
Ability to modularize SQL logic with reusable procedures and functions.
Demonstrates clean, parameterized SQL blocks ideal for production databases.


#  Inventory Management System (SQL Project)
This project demonstrates a SQL-based backend system for efficiently managing inventory across multiple warehouses, suppliers, and product categories. Designed using **MySQL Workbench**, it handles product details, stock levels, low inventory alerts, and stock transfers — all via robust schema design, triggers, and stored procedures.

> Ideal for learning how real-time inventory systems work using pure SQL and database management concepts.

---

##  Features
-  Manage products, suppliers, and warehouses
-  Track stock levels per warehouse
-  Automated **low stock notifications** using triggers
-  **Transfer stock** across warehouses using a stored procedure
-  Run analytics and reporting queries (like reorder alerts)

---

# Tools & Technologies

- **MySQL Workbench**
- **SQL (DDL, DML, Triggers, Views, Stored Procedures)**
- Manual Data Population (Insert Statements)

---

##  Folder Structure

```bash
Inventory-Management-System/
│
├── schema/
│   ├── create_tables.sql
│   └── insert_sample_data.sql
│
├── triggers/
│   └── low_stock_trigger.sql
│
├── procedures/
│   └── transfer_stock_procedure.sql
│
├── queries/
│   ├── check_stock_level.sql
│   └── reorder_alerts.sql
│
├── docs/
│   ├── Inventory_Management_Report.docx
│   └── Inventory_Management_Report.pdf
│
├── screenshots/
│   └── *.png (Optional: screenshots of query outputs)
│
└── README.md


# 🛍️ Olist E-Commerce Data Warehouse & Sales Analytics

A complete end-to-end Data Warehouse project built using PostgreSQL and Power BI based on the Brazilian Olist E-Commerce dataset.

The project demonstrates the complete ETL pipeline, dimensional modeling, star schema implementation, SQL analytics, and interactive dashboard creation.

---

# 📌 Project Overview

This project transforms raw Olist e-commerce datasets into a structured analytical data warehouse.

The workflow includes:

- Loading raw CSV files
- Creating staging tables
- Data validation
- Building Dimension tables
- Building Fact tables
- Writing analytical SQL queries
- Creating Power BI dashboards

The final database follows a **Star Schema** architecture optimized for business intelligence and reporting.

---

# 🏗️ Architecture

Raw CSV Files
        │
        ▼
 Staging Schema
        │
        ▼
 Data Cleaning & Validation
        │
        ▼
 Dimension Tables
        │
        ▼
 Fact Tables
        │
        ▼
 SQL Analytics
        │
        ▼
 Power BI Dashboard

---

# 📂 Project Structure

```
olist-data-warehouse/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_create_tables.sql
│   ├── 03_data_validation.sql
│   ├── 04_load_staging.sql
│   ├── 05_build_dimensions.sql
│   ├── 06_build_fact_tables.sql
│   └── 07_analytics_queries.sql
│
├── dashboard/
│   ├── Olist_Sales_Dashboard.pbix
│   └── dashboard_screenshot.png
│
├── docs/
│   ├── ER_Diagram.png
│   └── Star_Schema.png
│
└── README.md
```

---

# 🛠 Tech Stack

| Tool | Purpose |
|------|----------|
| PostgreSQL | Data Warehouse |
| SQL | ETL & Analytics |
| DBeaver | Database Management |
| Power BI | Dashboard & Visualization |
| Git | Version Control |
| GitHub | Project Hosting |

---

# 🗄 Database Schema

The project contains three schemas.

## 1. public

Default PostgreSQL schema.

---

## 2. staging

Stores raw imported CSV data.

Tables:

- customers
- sellers
- products
- orders
- order_items
- order_payments
- order_reviews
- geolocation
- product_category_name_translation
- marketing_qualified_leads
- closed_deals

---

## 3. analytics

Contains the final Data Warehouse.

### Dimension Tables

- dim_customers
- dim_products
- dim_sellers
- dim_category_translation

### Fact Tables

- fact_orders
- fact_order_items
- fact_payments
- fact_reviews

---

# ⭐ Star Schema

```
                 dim_customers
                        │
                        │
                        ▼
                 fact_orders
                    │
        ┌───────────┴────────────┐
        ▼                        ▼
fact_order_items          fact_payments
        │
        ▼
 dim_products
        │
        ▼
dim_category_translation

fact_reviews
        │
        ▼
fact_orders

dim_sellers
        │
        ▼
fact_order_items
```

---

# 📊 Analytical Queries

The project includes SQL analysis for:

- Total Revenue
- Total Orders
- Monthly Sales Trend
- Orders by State
- Top Selling Categories
- Revenue by Category
- Top Sellers
- Review Score Distribution
- Average Delivery Time
- Customer Distribution

---

# 📈 Power BI Dashboard

Dashboard includes:

✅ KPI Cards

- Total Revenue
- Total Orders
- Average Order Value
- Total Customers
- Average Review Score

---

### Charts

- Monthly Revenue Trend
- Orders by State
- Revenue by Product Category
- Top Sellers
- Review Score Distribution
- Delivery Time Analysis

---

# 📂 ETL Workflow

### Step 1

Create Database

```
01_database_setup.sql
```

---

### Step 2

Create Schemas & Tables

```
02_create_tables.sql
```

---

### Step 3

Validate Data Types

```
03_data_validation.sql
```

---

### Step 4

Load Raw CSV Files

```
04_load_staging.sql
```

---

### Step 5

Build Dimension Tables

```
05_build_dimensions.sql
```

---

### Step 6

Build Fact Tables

```
06_build_fact_tables.sql
```

---

### Step 7

Run Business Analytics Queries

```
07_analytics_queries.sql
```

---

# 🚀 Business Insights

Using this warehouse we can answer:

- Which states generate the highest revenue?
- Which product categories perform best?
- Who are the top sellers?
- How does revenue change over time?
- What is the average delivery time?
- How are review scores distributed?
- Which customers place the most orders?

---

# 📷 Screenshots

### ER Diagram

(Add screenshot)

---

### Power BI Dashboard

(Add screenshot)

---

# ▶️ How to Run

1. Clone the repository

```
git clone https://github.com/yourusername/olist-data-warehouse.git
```

2. Open PostgreSQL

3. Execute SQL scripts in order:

```
01_database_setup.sql

02_create_tables.sql

03_data_validation.sql

04_load_staging.sql

05_build_dimensions.sql

06_build_fact_tables.sql

07_analytics_queries.sql
```

4. Open Power BI

5. Connect to PostgreSQL

6. Load analytics schema

7. Refresh dashboard

---

# 📚 Dataset

The project uses the **Brazilian Olist E-Commerce Dataset**, which contains information on:

- Customers
- Sellers
- Orders
- Payments
- Products
- Reviews
- Geolocation
- Marketing Leads

---

# 👨‍💻 Author

AMAN KUSHWAHA

GitHub: https://github.com/Alohomora007



---

# ⭐ If you found this project useful, consider giving it a star!

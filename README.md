# Olist E-Commerce Analytics – Microsoft Fabric Data Engineering Project
End-to-end e-commerce analytics solution built with Microsoft Fabric, Lakehouse, Spark SQL, Fabric Warehouse, Direct Lake, and Power BI semantic modeling.

## Project Overview

This project demonstrates an end-to-end **Microsoft Fabric data engineering and analytics workflow** using the Brazilian Olist e-commerce dataset.

The project follows a **Medallion Architecture**:

**Bronze → Silver → Gold**

The goal is to ingest raw e-commerce data, clean and transform it using Microsoft Fabric notebooks and Spark, build analytical tables, and prepare the data for business intelligence and reporting.

---

## 🛠️ Technologies Used

* **Microsoft Fabric**
* **OneLake**
* **Fabric Lakehouse**
* **Apache Spark / PySpark**
* **SQL**
* **Python**
* **Delta Lake**
* **Power BI**
* **GitHub**

---

## Architecture

```text
Olist Raw CSV Files
        │
        ▼
┌──────────────────┐
│  Bronze Layer    │
│  Raw Data        │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│  Silver Layer    │
│  Cleaned &       │
│  Transformed     │
│  Delta Tables    │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│   Gold Layer     │
│ Business-Ready   │
│ Analytical Tables│
└────────┬─────────┘
         │
         ▼
     Power BI
```

---

## 📊 Dataset

The project uses the **Olist Brazilian E-Commerce Public Dataset**.
https://www.kaggle.com/code/thiagopanini/e-commerce-sentiment-analysis-eda-viz-nlp/input

The dataset contains information about:

* Customers
* Sellers
* Orders
* Order items
* Products
* Payments
* Reviews
* Geolocation
* Product categories

The data represents an e-commerce marketplace where **one order can contain multiple products/order items**.

---

# 🥉 Bronze Layer – Raw Data

The Bronze layer contains the original Olist CSV files loaded into the Microsoft Fabric Lakehouse.

### Objectives

* Ingest raw source files
* Preserve the original data
* Create a centralized data storage layer in OneLake
* Establish the foundation for downstream transformations

### Example source tables

* `olist_customers_dataset`
* `olist_sellers_dataset`
* `olist_orders_dataset`
* `olist_order_items_dataset`
* `olist_products_dataset`
* `olist_order_payments_dataset`
* `olist_order_reviews_dataset`
* `olist_geolocation_dataset`
* `product_category_name_translation`

---

# 🥈 Silver Layer – Data Cleaning & Transformation

The Silver layer contains cleaned and transformed Delta tables.

### Data preparation activities

* Removed duplicate records
* Handled missing values
* Standardized column names
* Converted data types
* Parsed date/time columns
* Validated relationships between datasets
* Created derived columns where appropriate
* Prepared normalized data for analytical modeling

### Silver tables

The project creates cleaned tables for the major Olist entities, including:

```text
silver_customers
silver_sellers
silver_orders
silver_order_items
silver_products
silver_payments
silver_reviews
silver_geolocation
```

The Silver layer is designed to provide reliable, reusable datasets for the Gold layer.

---

# 🥇 Gold Layer – Business Analytics

The Gold layer will transform the cleaned Silver data into business-friendly analytical datasets.

Potential analytical areas include:

### Sales Performance

* Total sales
* Number of orders
* Average order value
* Sales by time period
* Sales by product category

### Customer Analytics

* Customer distribution
* Orders per customer
* Customer geographic analysis
* Repeat purchasing behavior

### Seller Analytics

* Seller sales
* Number of orders fulfilled
* Seller geographic distribution
* Seller performance metrics

### Product Analytics

* Product category performance
* Product sales
* Review performance
* Product-level revenue

### Delivery Analytics

* Estimated vs. actual delivery time
* Late deliveries
* Delivery performance by region

---

# 🔄 Data Engineering Workflow

The project follows this workflow:

1. Load Olist source files into Microsoft Fabric
2. Store raw data in the Bronze layer
3. Read source data using Fabric notebooks
4. Clean and transform the data using PySpark
5. Write transformed data as Delta tables
6. Validate Silver tables
7. Build Gold analytical tables
8. Connect the analytical layer to Power BI
9. Develop business-focused analytics and visualizations

---

# 🧪 Data Quality Checks

Data quality validation includes:

* Duplicate record checks
* Null-value analysis
* Data type validation
* Primary key uniqueness
* Referential integrity
* Date validation
* Row-count validation
* Business-rule validation


# 🎯 Key Learning Outcomes

Through this project, I practiced:

* Microsoft Fabric Lakehouse architecture
* OneLake data storage
* Medallion architecture
* Fabric Notebooks
* PySpark data transformations
* Delta Lake tables
* Data cleansing and validation
* Data engineering workflows
* Analytical data modeling
* Business-oriented data preparation
* Power BI integration

**Microsoft Fabric | OneLake | Lakehouse | PySpark | Python | SQL | Delta Lake | Data Engineering | Medallion Architecture | Data Transformation | Data Quality | Power BI | Analytics**

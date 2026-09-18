# 🍕 Pizza Sales Dashboard

An end-to-end sales analytics project for a pizza restaurant chain — from raw transactional data to SQL-driven KPIs to an interactive dashboard.

The project analyzes a full year of pizza order data (2015) to uncover revenue trends, customer ordering patterns, and product performance, helping the business make data-informed decisions on menu, staffing, and promotions.

---

## 📌 Project Overview

| | |
|---|---|
| **Dataset** | 48,620 order line items, Jan–Dec 2015 |
| **Total Revenue** | $817,860.05 |
| **Total Orders** | 21,350 |
| **Total Pizzas Sold** | 49,574 |
| **Avg. Order Value** | $38.31 |
| **Avg. Pizzas per Order** | 2.32 |

---

## 🗂️ Repository Structure

```
pizza-sales-dashboard/
├── data/
│   └── pizza_sales.csv              # Raw transactional dataset
├── sql/
│   └── pizza_sales_queries.sql      # KPI & chart queries (MySQL)
├── dashboard/
│   └── pizza_sales_dashboard.xlsx   # Excel pivot-table dashboard
├── docs/
│   └── data_dictionary.md           # Column-level description of the dataset
├── images/
│   └── (dashboard screenshots go here)
├── .gitignore
└── README.md
```

---

## 🧾 Dataset

The raw dataset (`data/pizza_sales.csv`) contains one row per pizza sold, with the following fields:

`pizza_id`, `order_id`, `pizza_name_id`, `quantity`, `order_date`, `order_time`, `unit_price`, `total_price`, `pizza_size`, `pizza_category`, `pizza_ingredients`, `pizza_name`

See [`docs/data_dictionary.md`](docs/data_dictionary.md) for full column definitions.

---

## 🛠️ Tech Stack

- **SQL (MySQL)** — data cleaning, KPI calculation, aggregation queries
- **Excel** — pivot tables & pivot charts for the interactive dashboard
- **CSV** — raw data source

---

## 📊 SQL Analysis

All analysis queries live in [`sql/pizza_sales_queries.sql`](sql/pizza_sales_queries.sql). They cover:

**KPIs**
1. Total Revenue
2. Average Order Value
3. Total Pizzas Sold
4. Total Orders
5. Average Pizzas per Order

**Charts**
1. Daily trend of total orders
2. Hourly trend of total orders
3. % of sales by pizza category
4. % of sales by pizza size
5. Total pizzas sold by category
6. Top 5 best-selling pizzas
7. Bottom 5 worst-selling pizzas

To run it yourself:
```sql
CREATE DATABASE pizza_db;
USE pizza_db;
-- import data/pizza_sales.csv into a `pizza_sales` table, then run:
SOURCE sql/pizza_sales_queries.sql;
```

---

## 📈 Dashboard

`dashboard/pizza_sales_dashboard.xlsx` contains the full interactive dashboard built with pivot tables and charts, including:

- **KPI cards** — Revenue, Orders, Pizzas Sold, Avg Order Value, Avg Pizzas/Order
- **Daily trend for total orders** — orders by day of week
- **Hourly trend for total orders** — orders by hour of day
- **% of sales by category** and **% of sales by size**
- **Best & worst sellers** — top 5 and bottom 5 pizzas by quantity sold

> 💡 Add exported screenshots of the dashboard to the images/` 
> `![Dashboard Overview](images/dashboard_overview.png)`

---

## 🔍 Key Insights

- **Fridays are the busiest day** for orders, with a steady ramp-up from Sunday through the week.
- **Category sales are fairly balanced**, with *Classic* (~27%) and *Supreme* (~25%) pizzas leading, followed by *Chicken* (~24%) and *Veggie* (~24%).
- The average customer orders **~2.3 pizzas per order**, spending **~$38** per order.

*(Add hourly peak times and top/bottom seller names here once you pull them from the SQL output or dashboard.)*

---

## 🚀 How to Reproduce

1. Clone this repo
   ```bash
   git clone https://github.com/<your-username>/pizza-sales-dashboard.git
   ```
2. Load `data/pizza_sales.csv` into MySQL (or any SQL engine) as a table named `pizza_sales`.
3. Run the queries in `sql/pizza_sales_queries.sql` to reproduce the KPIs and chart data.
4. Open `dashboard/pizza_sales_dashboard.xlsx` in Excel to explore the interactive dashboard.

---

## 📄 License

This project is released under the [MIT License](LICENSE) — feel free to use and adapt it.

# Year-on-Year (YoY) Growth Rate – Product Spend

## 📌 Problem Summary

Calculate the year-on-year growth rate for total product spend.

For each product and each year, compute:

- Current year total spend
- Previous year total spend
- YoY growth percentage (rounded to 2 decimal places)

---

## 🧠 SQL Approach

### Step 1: Extract Year
Extract year from transaction_date.

### Step 2: Aggregate Spend
Group by:
- product_id
- year

Calculate total spend per year.

### Step 3: Get Previous Year Spend
Use LAG() window function:

LAG(curr_year_spend) OVER (
    PARTITION BY product_id
    ORDER BY year
)

### Step 4: Calculate Growth %

YoY Formula:

((current - previous) / previous) * 100

---

## 🧩 SQL Concepts Used

- GROUP BY
- SUM()
- EXTRACT(YEAR FROM date)
- Window Functions (LAG)
- PARTITION BY
- ORDER BY
- ROUND()

---

## 📊 Output Columns

- year
- product_id
- curr_year_spend
- prev_year_spend
- yoy_rate

---

## 📈 Interview Pattern

When you see:

"Growth"
"Previous period comparison"
"Year-over-Year"
"Month-over-Month"

Think:

1. Aggregate by time period
2. Use LAG()
3. Apply growth formula

---

## 🚀 Real-World Applications

- Revenue Growth Analysis
- Sales Trend Monitoring
- Product Performance Tracking
- Investor Reporting
- Financial Forecasting

See `businessibase_analysis.md` for detailed business interpretation.
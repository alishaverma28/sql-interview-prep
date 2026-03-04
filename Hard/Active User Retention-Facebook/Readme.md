# Monthly Active Users (Retention-Based)

## 📌 Problem Summary

Calculate the number of users who were active in **July 2022** 
and were also active in **June 2022**.

This measures returning active users (retention).

---

## 🧠 Business Context

Companies track:

- DAU (Daily Active Users)
- MAU (Monthly Active Users)
- User Retention

This query calculates **retained monthly active users** —
users who were active in consecutive months.

This is important for:
- Measuring product stickiness
- Tracking user engagement
- Monitoring churn
- Evaluating growth quality

For example, companies like Google, Amazon, and product-based startups
care more about retention than just new user growth.

---

## 🗂 Approach

### Step 1: Get July Active Users
Extract distinct users active in July 2022.

### Step 2: Get June Active Users
Extract distinct users active in June 2022.

### Step 3: Find Intersection
Join July users with June users to find users active in both months.

### Step 4: Count Them
Count users who appear in both months.

---

## 🧩 SQL Concepts Used

- CTE (Common Table Expressions)
- Date filtering
- DISTINCT
- INNER JOIN
- Aggregation (COUNT)

---

## 📊 Query

See `solution.sql`

---

## 🚀 Real-World Application

This logic can be extended to:

- Calculate monthly retention rate
- Compute retention percentage:
  
  retained_users / total_june_users * 100

- Calculate rolling retention
- Build cohort analysis
- Create retention dashboards in BI tools

---

## 📚 Learning Insight

This is a classic interview pattern:

"Find users active in consecutive periods."

Variations may include:

- Weekly retention
- 7-day retention
- Cohort-based retention
- Percentage retention instead of count

Understanding this pattern is critical for Data Analyst roles.
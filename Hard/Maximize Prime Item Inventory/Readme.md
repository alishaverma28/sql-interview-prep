# Warehouse Inventory Allocation – Space Optimization

## 📌 Problem Summary

A warehouse has 500,000 square feet of space.

Inventory items are grouped into:
- prime_eligible
- not_prime

Each item type has:
- Total square footage per batch
- Number of items per batch

The goal:
1. Fill warehouse with as many prime_eligible batches as possible.
2. Use remaining space to store not_prime batches.
3. Output total items stored for each category.

---

## 🧠 SQL Approach

### Step 1: Calculate Batch Size Per Item Type

Aggregate inventory to get:
- Total square footage per batch
- Total item count per batch

---

### Step 2: Calculate Prime Allocation

For prime_eligible items:

- Calculate maximum batches that fit:
  
  floor(500000 / batch_sq_ft)

- Calculate total items stored.
- Calculate remaining warehouse space.

---

### Step 3: Allocate Remaining Space to Non-Prime

Using remaining square footage:
- Calculate how many not_prime batches fit.
- Calculate total not_prime items stored.

---

### Step 4: Combine Results

Return:
- prime_eligible item count
- not_prime item count

Using UNION ALL.

---

## 🧩 SQL Concepts Used

- CTEs
- GROUP BY
- SUM()
- COUNT()
- FLOOR()
- Arithmetic calculations
- JOIN
- UNION ALL

---

## 📊 Output

| item_type       | items_count |
|----------------|------------|
| prime_eligible | X          |
| not_prime      | Y          |

---

## 🎯 Interview Pattern

This question tests:

- Multi-step CTE logic
- Business prioritization logic
- Optimization thinking
- Arithmetic operations in SQL

It is not just aggregation —
it is constraint-based allocation.
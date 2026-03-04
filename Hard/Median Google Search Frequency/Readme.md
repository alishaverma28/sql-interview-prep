# 📊 Median Google Search Frequency

## 🏢 Company
Google

## 🎯 Problem Statement

Google's marketing team wants to find the median number of searches 
performed by users.

The table `search_frequency` contains:
- searches → number of searches performed
- num_users → number of users who performed that many searches

We need to calculate the median search count.

---

## 🧠 Key Concept

This is a **weighted median problem**, not a normal median.

Because:
- Each `searches` value appears `num_users` times.
- We cannot directly use MEDIAN().
- We must use cumulative frequency logic.

---

## 🔍 Approach

1. Calculate cumulative users using window function.
2. Find total users.
3. Identify rows where cumulative sum crosses middle value.
4. Take average (for even case).
5. Round to 1 decimal.

---

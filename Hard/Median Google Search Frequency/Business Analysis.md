
---

# 📄 Business_Analysis.md

```markdown
# 📊 Business Analysis – Median Search Frequency

## 🏢 Business Context

Google wants to understand user engagement levels.

Instead of average searches, they want the **median** because:

- Average can be affected by extreme heavy users.
- Median shows the "typical" user behavior.
- Helps in product decision making and marketing strategy.

---

## 📈 Why Median is Important?

Example:

If:
- 90 users search 5 times
- 10 users search 10,000 times

Average will be very high.
Median will still be 5.

So median represents real user behavior better.

---

## 🧠 Analytical Thinking

This problem tests:

- Understanding of weighted median
- Window functions
- Cumulative distribution logic
- Business interpretation of statistical metrics

---

## 📊 Real Business Usage

This metric can help Google:

- Segment normal vs power users
- Design ad pricing strategy
- Improve search experience
- Optimize server load
- Identify user engagement trends

---

## 💡 Key Insight

When data is given in frequency format:
(searches, num_users)

You must:
- Expand logically using cumulative sums
- Not physically duplicate rows
- Use window functions smartly

---

## 🚀 Interview Value

This is a HIGH quality SQL interview question.

It tests:
- Window functions
- Median logic
- Analytical maturity
- Business thinking

Perfect for FAANG-level interviews.
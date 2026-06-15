# Day 1

# HR Attrition Project - Learning Notes

## 📌 Project Summary
This project analyzes employee attrition using SQL and Power BI.  
Dataset was taken from Kaggle and imported into MySQL for analysis.

---

## 🧱 Step 1: Data Setup

- Created database: `hr_project`
- Imported Kaggle dataset into table: `hr_attrition`
- Verified data using:
  - SELECT * FROM hr_attrition LIMIT 5
  - COUNT(*) = 1470 rows

---

## 📊 Step 2: Data Understanding

### Key Columns Learned:

- **DailyRate** → daily earning rate
- **MonthlyIncome** → actual monthly salary
- **MonthlyRate** → payroll internal metric
- **StockOptionLevel** → employee benefits level
- **JobInvolvement** → performance rating by manager
- **EnvironmentSatisfaction** → workplace satisfaction
- **StandardHours** → constant working hours

---

## 📈 Step 3: Data Exploration

### Basic Findings:

- Age range: 18 to 60
- Average age: ~36.9
- Monthly income: 1009 to 19999
- Attrition:
  - Yes: 237
  - No: 1233

---

## 🏢 Department Distribution

- Research & Development: 961
- Sales: 446
- Human Resources: 63

---

## 👨‍💼 Job Role Distribution

- Sales Executive: 326
- Research Scientist: 292
- Laboratory Technician: 259
- Others distributed across 6 roles

---

## 💰 Income Insights

- Low income employees (1000–5000) are highest in count
- Higher income groups show lower attrition

---

## 🚗 Business Travel

- Travel_Rarely: highest employees (1043)
- Frequent travel may increase attrition risk

---

## ⏱️ OverTime Insight

- Employees working overtime show significantly higher attrition (~30%+)

---

## 🏠 Work-Life Balance

- Low work-life balance is strongly linked to attrition

---

## 📉 Data Cleaning Checks

- No duplicate EmployeeNumber found
- No NULL values in key fields
- Valid categorical values confirmed
- Logical checks performed:
  - YearsInCurrentRole ≤ YearsAtCompany
  - YearsSinceLastPromotion ≤ YearsAtCompany

---

## 🎯 Final Conclusion

Key drivers of attrition:

- OverTime (strongest factor)
- Low income
- Low job involvement
- Poor work-life balance
- Single employees
- Early career employees

---

## 🚀 Skills Learned

- SQL data analysis
- Data cleaning techniques
- Business insight generation
- Power BI dashboard creation
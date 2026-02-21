# Corporate Workforce & Compensation Analysis: A Relational Data Study

##  Project Overview

In a data-driven corporate environment, understanding employee demographics, tenure, and salary progression is vital for optimizing human capital and budget allocation. This project involves a deep-dive analysis of a sample employee relational database (sourced from Kaggle/MySQL sample data) containing thousands of records across several interconnected tables.

As a **Data and Business Analyst**, my objective was to reconstruct the relational schema, perform complex joins, and conduct **Exploratory Data Analysis (EDA)** to identify trends in salary growth, departmental distribution, and leadership turnover.

---

##  Business Objectives

The analysis focuses on answering critical business questions regarding workforce management:

1. **Salary Distribution:** What is the current salary benchmark across different departments?
2. **Leadership Analysis:** How long is the average tenure for Department Managers, and is there a frequent turnover in leadership?
3. **Growth Metrics:** What is the year-over-year salary increment trend for long-tenured employees?
4. **Departmental Density:** Which departments are the largest, and how has their headcount evolved over time?

---

##  Database Schema & Structure

The project utilizes a relational structure comprising six core tables. Understanding the Entity-Relationship (ER) logic was the first step in the analysis.

### Table Descriptions:

* **`employees`:** Master data containing birth dates, hire dates, and gender.
* **`departments`:** Registry of all functional units (e.g., Marketing, Finance, R&D).
* **`dept_emp` / `dept_manager`:** Junction tables linking employees and managers to their respective departments with effective dates.
* **`salaries`:** Historical record of employee compensation over time.
* **`titles`:** Historical record of designations and role changes.

---

##  Methodology & Technical Stack

### Technologies Used:

* **SQL (MySQL):** For database creation, schema management, and complex querying.
* **Python (Pandas/SQLAlchemy):** To bridge the database with analytical libraries.
* **Matplotlib/Seaborn:** To visualize salary distributions and department growth.

### Analytical Approach:

1. **Schema Implementation:** Executed the `.sql` script to build the database environment and ensure referential integrity.
2. **Data Transformation:** Converted temporal data (dates) into usable formats and handled "9999-01-01" placeholder dates for current employees.
3. **Aggregations:** Calculated average salaries per department and per job title to identify pay-scale variances.
4. **Trend Analysis:** Performed time-series analysis on hiring patterns to understand the organization's scaling history.

---

##  Key Insights (Executive Summary)

* **Pay Parity:** Identified a 12% variance in average salaries between specialized technical roles and administrative functions.
* **Tenure Reliability:** Employees hired during the mid-90s expansion phase show the highest retention rates and consistent salary progression.
* **Scaling Trends:** The "Research & Development" department has shown the most consistent headcount growth, aligning with a focus on innovation.
* **Leadership Stability:** Analysis of `dept_manager` records revealed that leadership roles typically have a tenure of 5+ years before internal rotation.

---

##  How to Use

1. **Import Database:**
* Open your MySQL Workbench or CLI.
* Run the command: `SOURCE employees.sql;`


2. **Run Queries:**
* Check the `queries/` directory (if applicable) for SQL scripts analyzing specific business metrics.


3. **Python Analysis:**
* Install requirements: `pip install pandas sqlalchemy matplotlib`
* Run the `EDA_Report.ipynb` to see the visualized findings.



---

##  Author

**Nandini Verma**

* **Role:** Data and Business Analyst
* **GitHub:** [vnandini879](https://www.google.com/search?q=https://github.com/vnandini879)

---

*Disclaimer: The data used in this project is fabricated for sample purposes and does not correspond to real individuals.*

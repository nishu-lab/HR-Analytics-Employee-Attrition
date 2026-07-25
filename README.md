# HR Analytics – Employee Attrition

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?logo=postgresql&logoColor=white)

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?logo=powerbi&logoColor=black)

![SQL](https://img.shields.io/badge/SQL-025E8C?logo=database&logoColor=white)

![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white)

## Project Overview

Employee attrition is one of the most important workforce metrics because it directly impacts recruitment costs, productivity, and employee retention. This project analyzes HR employee data to identify attrition patterns across departments, age groups, education fields, job roles, and employee demographics.

The project combines **PostgreSQL** for data validation and business analysis with **Power BI** for interactive dashboard development, enabling HR teams to make data-driven workforce decisions.

---

# Business Problem

Organizations often struggle to understand why employees leave and which workforce segments are more likely to experience attrition.

This project answers important business questions such as:

- Which department has the highest employee attrition?
- Which age group represents the largest workforce?
- How does employee attrition vary across education fields?
- How does job satisfaction differ across job roles?
- How does attrition vary by gender and age group?

---

# Dataset Information

| Attribute | Details |
|------------|---------|
| Dataset | IBM HR Analytics Employee Attrition Dataset |
| Records | 1,470 |
| Features | 41 |
| Format | Excel (.xlsx) & CSV |
| Database | PostgreSQL |

---

# Tools & Technologies

- PostgreSQL
- Power BI Desktop
- Microsoft Excel
- Visual Studio Code
- Git & GitHub

---

# Project Workflow

```
Dataset
      ↓
PostgreSQL Database
      ↓
Data Validation
      ↓
Data Cleaning Verification
      ↓
KPI Generation
      ↓
Business Analysis
      ↓
Power BI Dashboard
      ↓
Dashboard Validation
```

---

# SQL Modules

The SQL implementation is organized into six phases.

### 01. Database Setup

- Database verification
- Table creation
- Dataset import preparation

### 02. Data Validation

- Record validation
- Table structure validation
- Duplicate detection
- NULL value validation
- Category validation

### 03. Data Cleaning

- Duplicate verification
- Missing value verification
- Dataset quality confirmation

### 04. KPI Queries

Generated the following KPIs:

- Overall Employees
- Attrition Count
- Active Employees
- Attrition Rate
- Average Employee Age

### 05. Business Analysis

Performed business analysis for:

- Department-wise Attrition
- Employees by Age Group
- Job Satisfaction Analysis
- Education Field-wise Attrition
- Attrition by Gender & Age Group

### 06. Dashboard Validation

Validated all Power BI dashboard visuals using SQL queries to ensure reporting accuracy.

---

# Dashboard KPIs

| KPI | Value |
|------|-------|
| Overall Employees | 1470 |
| Attrition Count | 237 |
| Active Employees | 1233 |
| Attrition Rate | 16.12% |
| Average Age | 37 Years |

---

# Dashboard Preview

> Dashboard image is available in the **Dashboard/** folder.

```
Dashboard/
    Dashboard.png
```

---

# Key Business Insights

- Research & Development recorded the highest employee attrition among all departments.
- Employees aged **25–34 years** represent the largest workforce segment.
- Life Sciences and Medical education backgrounds contribute the highest employee attrition.
- Job satisfaction varies considerably across different job roles.
- Employee attrition patterns differ across gender and age groups.

---

# Business Recommendations

- Prioritize employee retention initiatives in departments with higher attrition.
- Improve employee engagement programs for key workforce age groups.
- Conduct regular job satisfaction assessments to identify retention risks.
- Use workforce analytics dashboards to support HR decision-making.

---

# Project Structure

```
HR-Analytics-Employee-Attrition/
│
├── Dataset/
│      HR_data.csv
│      IBM_HR_Analytics.xlsx
│
├── SQL/
│      01_Database_Setup.sql
│      02_Data_Validation.sql
│      03_Data_Cleaning.sql
│      04_KPI_Queries.sql
│      05_Business_Analysis.sql
│      06_Dashboard_Validation.sql
│
├── PowerBI/
│      HR_Analytics.pbix
│
├── Dashboard/
│      Dashboard.png
│
└── README.md
```

---

# How to Run the Project

### PostgreSQL

1. Create the database.
2. Execute **01_Database_Setup.sql**.
3. Import `HR_data.csv` using pgAdmin.
4. Execute SQL files in sequence.

### Power BI

1. Open `HR_Analytics.pbix`.
2. Refresh the dataset if required.
3. Explore the interactive dashboard.

---

# Author

**Nishu Gupta**

B.Tech Computer Science Engineering

Aspiring Data Analyst | SQL | PostgreSQL | Power BI

---

# License

This project is created for educational and portfolio purposes.
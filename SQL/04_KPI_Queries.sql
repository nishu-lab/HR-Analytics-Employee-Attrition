-- ==========================================================
-- Project  : HR Analytics - Employee Attrition 
-- File     : 04_KPI_Queries.sql
-- Purpose  : Calculates the key performance indicators (KPIs)
--            used in the HR Analytics dashboard.
-- ==========================================================


-- Overall Employees

SELECT
    COUNT(*) AS overall_employees
FROM hr_data;


-- Attrition Count

SELECT
    COUNT(*) AS attrition_count
FROM hr_data
WHERE attrition = 'Yes';


-- Active Employees

SELECT
    COUNT(*) AS active_employees
FROM hr_data
WHERE attrition = 'No';


-- Attrition Rate

SELECT
    ROUND(
        COUNT(*) FILTER (WHERE attrition = 'Yes') * 100.0
        / COUNT(*),
        2
    ) AS attrition_rate
FROM hr_data;


-- Average Employee Age

SELECT
    ROUND(AVG(age), 0) AS average_age
FROM hr_data;
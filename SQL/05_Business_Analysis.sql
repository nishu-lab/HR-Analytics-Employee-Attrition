-- ==========================================================
-- Project  : HR Analytics - Employee Attrition 
-- File     : 05_Business_Analysis.sql
-- Purpose  : Analyzes employee attrition patterns across
--            departments, demographics, education, and job
--            satisfaction to identify key workforce trends.
-- ==========================================================


-- Department-wise Attrition

-- Business Question:
-- Which department experiences the highest employee attrition?

SELECT
    department,
    COUNT(*) AS attrition_count
FROM hr_data
WHERE attrition = 'Yes'
GROUP BY department
ORDER BY attrition_count DESC;

-- Business Insight:
-- Identifies departments with higher employee turnover,
-- helping organizations prioritize employee retention
-- strategies and workforce planning.


-- Employees by Age Group

-- Business Question:
-- How are employees distributed across different age groups?

SELECT
    cf_age_band,
    COUNT(*) AS employee_count
FROM hr_data
GROUP BY cf_age_band
ORDER BY
CASE
    WHEN cf_age_band = 'Under 25' THEN 1
    WHEN cf_age_band = '25 - 34' THEN 2
    WHEN cf_age_band = '35 - 44' THEN 3
    WHEN cf_age_band = '45 - 54' THEN 4
    WHEN cf_age_band = 'Over 55' THEN 5
END;

-- Business Insight:
-- Provides an overview of workforce composition across
-- different age categories, supporting demographic
-- analysis and succession planning.


-- Job Satisfaction Analysis

-- Business Question:
-- How does Job Satisfaction vary across different Job Roles?

SELECT
    job_role,
    job_satisfaction,
    COUNT(*) AS employee_count
FROM hr_data
GROUP BY job_role, job_satisfaction
ORDER BY job_role, job_satisfaction;

-- Business Insight:
-- Highlights employee satisfaction levels within each
-- job role, supporting initiatives to improve employee
-- engagement and workplace experience.


-- Education Field-wise Attrition

-- Business Question:
-- Which education fields experience the highest employee attrition?

SELECT
    education_field,
    COUNT(*) AS attrition_count
FROM hr_data
WHERE attrition = 'Yes'
GROUP BY education_field
ORDER BY attrition_count DESC;

-- Business Insight:
-- Identifies educational backgrounds associated with
-- higher attrition, supporting recruitment and retention
-- planning.


-- Attrition by Gender and Age Group

-- Business Question:
-- How does employee attrition differ across gender and age groups?

SELECT
    gender,
    cf_age_band,
    COUNT(*) AS attrition_count
FROM hr_data
WHERE attrition = 'Yes'
GROUP BY gender, cf_age_band
ORDER BY gender, cf_age_band;

-- Business Insight:
-- Examines demographic attrition patterns to support
-- diversity analysis and targeted employee retention
-- initiatives.
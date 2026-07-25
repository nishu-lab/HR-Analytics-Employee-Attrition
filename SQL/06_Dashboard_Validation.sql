-- ==========================================================
-- Project     : HR Analytics - Employee Attrition 
-- File        : 06_Dashboard_Validation.sql
-- Description : SQL validation queries used to verify that
--               Power BI dashboard visuals display accurate
--               results from the HR dataset.
-- ==========================================================


-- Department-wise Attrition

SELECT
    department,
    COUNT(*) AS attrition_count
FROM hr_data
WHERE attrition = 'Yes'
GROUP BY department
ORDER BY attrition_count DESC;

-- Validation:
-- Confirms the values displayed in the Department-wise
-- Attrition chart.


-- Employees by Age Group

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

-- Validation:
-- Confirms employee distribution across all age groups
-- shown in the dashboard.


-- Education Field-wise Attrition

SELECT
    education_field,
    COUNT(*) AS attrition_count
FROM hr_data
WHERE attrition = 'Yes'
GROUP BY education_field
ORDER BY attrition_count DESC;

-- Validation:
-- Confirms attrition counts for each education field
-- displayed in the dashboard.


-- Job Satisfaction Rating

SELECT
    job_role,
    job_satisfaction,
    COUNT(*) AS employee_count
FROM hr_data
GROUP BY job_role, job_satisfaction
ORDER BY job_role, job_satisfaction;

-- Validation:
-- Confirms employee counts for each Job Role and
-- Job Satisfaction level used in the dashboard matrix.


-- Attrition by Gender & Age Group

SELECT
    gender,
    cf_age_band,
    COUNT(*) AS attrition_count
FROM hr_data
WHERE attrition = 'Yes'
GROUP BY gender, cf_age_band
ORDER BY gender, cf_age_band;

-- Validation:
-- Confirms gender-wise attrition distribution across
-- different age groups displayed in the dashboard.

-- ==========================================================
-- Summary
-- The HR dataset was successfully validated for analytical processing. Record completeness, table structure, unique employee identifiers, and categorical field values were verified, confirming that the dataset is consistent and ready for the data cleaning and analysis phases.
-- ==========================================================
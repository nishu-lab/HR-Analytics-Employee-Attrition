-- ==========================================================
-- Project  : HR Analytics - Employee Attrition
-- File     : 03_Data_Cleaning.sql
-- Author   : Nishu Gupta
-- Purpose  : Documents the data cleaning process performed
--            on the HR dataset prior to business analysis.
-- ==========================================================


-- Data Cleaning Status

-- Data validation confirmed that the HR dataset contains
-- no duplicate Employee Numbers and no missing Employee
-- Number values. As a result, the original dataset was
-- retained without any modification.


-- Employee Number Uniqueness

SELECT
    employee_number,
    COUNT(*) AS duplicate_count
FROM hr_data
GROUP BY employee_number
HAVING COUNT(*) > 1;


-- Employee Number Completeness

SELECT
    COUNT(*) AS null_employee_numbers
FROM hr_data
WHERE employee_number IS NULL;


-- ==========================================================
-- Summary
-- The HR dataset satisfies the required data quality standards for analytical processing. No duplicate Employee Numbers or missing Employee Number values were identified, and no additional cleaning was required.
-- ==========================================================
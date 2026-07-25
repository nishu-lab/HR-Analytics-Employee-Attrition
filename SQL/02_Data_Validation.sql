-- ==========================================================
-- Project  : HR Analytics - Employee Attrition 
-- File     : 02_Data_Validation.sql
-- Purpose  : Validates the imported HR dataset by checking
--            record completeness, table structure, unique
--            identifiers and categorical field values before
--            performing analysis.
-- ==========================================================


-- Dataset Records

SELECT
    COUNT(*) AS total_records
FROM hr_data;

-- Validation:
-- Confirms that all employee records are available
-- for analysis.



-- Table Structure

SELECT
    COUNT(*) AS total_columns
FROM information_schema.columns
WHERE table_name = 'hr_data';

-- Validation:
-- Confirms that the table structure matches
-- the original HR dataset.



-- Employee Number Uniqueness

SELECT
    employee_number,
    COUNT(*) AS duplicate_count
FROM hr_data
GROUP BY employee_number
HAVING COUNT(*) > 1;

-- Validation:
-- Confirms that every employee is uniquely identified.



-- Employee Number Completeness

SELECT
    COUNT(*) AS null_employee_numbers
FROM hr_data
WHERE employee_number IS NULL;

-- Validation:
-- Confirms that no employee records contain
-- missing Employee Numbers.



-- Attrition Categories

SELECT DISTINCT
    attrition
FROM hr_data;

-- Validation:
-- Confirms the available Attrition categories.



-- Gender Categories

SELECT DISTINCT
    gender
FROM hr_data;

-- Validation:
-- Confirms the available Gender categories.



-- Department Categories

SELECT DISTINCT
    department
FROM hr_data;

-- Validation:
-- Confirms the available business departments.



-- Job Role Categories

SELECT DISTINCT
    job_role
FROM hr_data;

-- Validation:
-- Confirms the available employee job roles.



-- Marital Status Categories

SELECT DISTINCT
    marital_status
FROM hr_data;

-- Validation:
-- Confirms the available Marital Status categories.



-- Overtime Categories

SELECT DISTINCT
    over_time
FROM hr_data;

-- Validation:
-- Confirms the available Overtime categories.


-- ==========================================================
-- Summary
-- The HR dataset was successfully validated for analytical processing. Record completeness, table structure, unique employee identifiers, and categorical field values were verified, confirming that the dataset is consistent and ready for the data cleaning and analysis phases.
-- ==========================================================
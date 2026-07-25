-- ==========================================================
-- Project  : HR Analytics - Employee Attrition 
-- File     : 01_Database_Setup.sql
-- Author   : Nishu Gupta
-- Database : HR_analytics
-- Purpose  : Creates the HR employee table used for SQL analysis and Power BI dashboard reporting.
-- ==========================================================

-- Dataset Import
-- The HR employee dataset is imported into the hr_data table using the pgAdmin Import/Export Data tool after the table structure is created.


-- Current Database

SELECT current_database();

-- HR Employee Table

CREATE TABLE hr_data (

    Attrition VARCHAR(10),
    Business_Travel VARCHAR(50),
    CF_Age_Band VARCHAR(20),
    CF_Attrition_Label VARCHAR(20),
    Department VARCHAR(50),
    Education_Field VARCHAR(50),
    Emp_No VARCHAR(20),
    Employee_Number INT,
    Gender VARCHAR(10),
    Job_Role VARCHAR(100),
    Marital_Status VARCHAR(20),
    Over_Time VARCHAR(10),
    Over18 VARCHAR(5),
    Training_Times_Last_Year INT,
    Age INT,
    CF_Attrition_Count INT,
    CF_Attrition_Rate INT,
    CF_Current_Employee INT,
    Daily_Rate INT,
    Distance_From_Home INT,
    Education VARCHAR(40),
    Employee_Count INT,
    Environment_Satisfaction INT,
    Hourly_Rate INT,
    Job_Involvement INT,
    Job_Level INT,
    Job_Satisfaction INT,
    Monthly_Income INT,
    Monthly_Rate INT,
    Num_Companies_Worked INT,
    Percent_Salary_Hike INT,
    Performance_Rating INT,
    Relationship_Satisfaction INT,
    Standard_Hours INT,
    Stock_Option_Level INT,
    Total_Working_Years INT,
    Work_Life_Balance INT,
    Years_At_Company INT,
    Years_In_Current_Role INT,
    Years_Since_Last_Promotion INT,
    Years_With_Curr_Manager INT

);

-- Table Verification

SELECT * FROM hr_data;


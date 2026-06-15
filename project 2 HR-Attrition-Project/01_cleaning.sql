#Day 2

-- ==================================================
-- PROJECT 2: HR ATTRITION DATA CLEANING
-- ==================================================

-- STEP 1: CREATE CLEANING TABLE FROM RAW DATA

CREATE TABLE cleaning_attrition AS
SELECT *
FROM hr_attrition;


-- STEP 2: CHECK BASIC DATA SIZE (ROW VALIDATION)

SELECT COUNT(*) AS total_rows
FROM cleaning_attrition;


-- STEP 3: SET PRIMARY KEY (IDENTIFIER COLUMN)

ALTER TABLE cleaning_attrition
ADD PRIMARY KEY (EmployeeNumber);


-- ==================================================
-- STEP 4: DATA QUALITY CHECKS
-- ==================================================

-- 4.1 DUPLICATE CHECK (EmployeeNumber should be unique)

SELECT EmployeeNumber, COUNT(*) AS duplicate_count
FROM cleaning_attrition
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;


-- 4.2 NULL VALUE CHECK (IMPORTANT COLUMNS)

SELECT 
    COUNT(*) AS total_rows,
    COUNT(Age) AS age_count,
    COUNT(MonthlyIncome) AS income_count,
    COUNT(Department) AS department_count
FROM cleaning_attrition;


-- ==================================================
-- STEP 5: CATEGORICAL COLUMN VALIDATION
-- ==================================================

-- Attrition distribution

SELECT Attrition, COUNT(*) AS count
FROM cleaning_attrition
GROUP BY Attrition;


-- Business Travel validation

SELECT BusinessTravel, COUNT(*) AS count
FROM cleaning_attrition
GROUP BY BusinessTravel;


-- Department validation

SELECT Department, COUNT(*) AS count
FROM cleaning_attrition
GROUP BY Department;


-- Gender validation

SELECT Gender, COUNT(*) AS count
FROM cleaning_attrition
GROUP BY Gender;


-- OverTime validation

SELECT OverTime, COUNT(*) AS count
FROM cleaning_attrition
GROUP BY OverTime;


-- Over18 check (should be single value)

SELECT Over18, COUNT(*) AS count
FROM cleaning_attrition
GROUP BY Over18;


-- ==================================================
-- STEP 6: NUMERIC DATA LOGICAL VALIDATION
-- ==================================================

-- Check invalid year relationships

SELECT *
FROM cleaning_attrition
WHERE YearsInCurrentRole > YearsAtCompany
   OR YearsSinceLastPromotion > YearsAtCompany
   OR YearsWithCurrManager > YearsAtCompany;


-- ==================================================
-- STEP 7: SUMMARY CHECK (FINAL VALIDATION)
-- ==================================================

-- Total rows should match original dataset (1470 expected)

SELECT COUNT(*) AS final_row_count
FROM cleaning_attrition;
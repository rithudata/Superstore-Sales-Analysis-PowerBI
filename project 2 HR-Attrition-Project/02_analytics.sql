# Day 3

-- ==================================================
-- PROJECT 2: HR ATTRITION ANALYSIS (BUSINESS INSIGHTS)
-- ==================================================

-- BASE IDEA:
-- Attrition Rate = Yes / Total Employees


-- ==================================================
-- 1. AGE GROUP ANALYSIS
-- ==================================================

SELECT 
    CASE 
        WHEN Age <= 20 THEN '18-20'
        WHEN Age BETWEEN 21 AND 30 THEN '21-30'
        WHEN Age BETWEEN 31 AND 40 THEN '31-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        ELSE '51-60'
    END AS AgeGroup,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS AttritionRate
FROM cleaning_attrition
GROUP BY AgeGroup;

 
-- ==================================================
-- 2. BUSINESS TRAVEL IMPACT
-- ==================================================

SELECT 
    BusinessTravel,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM cleaning_attrition
GROUP BY BusinessTravel;


-- ==================================================
-- 3. DEPARTMENT ANALYSIS
-- ==================================================

SELECT 
    Department,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM cleaning_attrition
GROUP BY Department;


-- ==================================================
-- 4. EDUCATION FIELD ANALYSIS
-- ==================================================

SELECT 
    EducationField,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM cleaning_attrition
GROUP BY EducationField;


-- ==================================================
-- 5. JOB ROLE ANALYSIS
-- ==================================================

SELECT 
    JobRole,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM cleaning_attrition
GROUP BY JobRole;


-- ==================================================
-- 6. OVER TIME IMPACT (VERY IMPORTANT INSIGHT)
-- ==================================================

SELECT 
    OverTime,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM cleaning_attrition
GROUP BY OverTime;


-- ==================================================
-- 7. MONTHLY INCOME ANALYSIS
-- ==================================================

SELECT 
    CASE 
        WHEN MonthlyIncome <= 5000 THEN '1000-5000'
        WHEN MonthlyIncome <= 10000 THEN '5000-10000'
        WHEN MonthlyIncome <= 15000 THEN '10000-15000'
        ELSE '15000-20000'
    END AS IncomeBand,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM cleaning_attrition
GROUP BY IncomeBand;


-- ==================================================
-- 8. WORK-LIFE BALANCE ANALYSIS
-- ==================================================

SELECT 
    WorkLifeBalance,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM cleaning_attrition
GROUP BY WorkLifeBalance;


-- ==================================================
-- 9. MARITAL STATUS ANALYSIS
-- ==================================================

SELECT 
    MaritalStatus,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM cleaning_attrition
GROUP BY MaritalStatus;


-- ==================================================
-- FINAL BUSINESS INSIGHTS (SUMMARY)
-- ==================================================

-- KEY FINDINGS:
-- 1. OverTime employees have highest attrition (~30%+)
-- 2. Early career employees (low experience) leave more
-- 3. Low Monthly Income increases attrition risk
-- 4. Low Job Involvement strongly impacts attrition
-- 5. Poor Work-Life Balance increases attrition
-- 6. Single employees have higher attrition
-- 7. Frequent travelers show higher attrition
-- 8. Low job level employees leave more
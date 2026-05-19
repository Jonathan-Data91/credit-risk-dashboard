-- Create database

CREATE DATABASE bank_risk_analysis;

-- Use database

USE bank_risk_analysis;

-- Use database

USE bank_risk_analysis;

-- Display first rows

SELECT *
FROM credit_risk
LIMIT 10;

-- =====================================================
-- Good Clients vs Bad Clients
-- 0 = Good Client
-- 1 = Bad Client
-- =====================================================

SELECT loan_status,
       COUNT(*) AS total_clients
FROM credit_risk
GROUP BY loan_status;

-- =====================================================
-- Risk Analysis by Loan Grade
-- =====================================================

SELECT loan_grade,
       AVG(loan_status) AS risk_rate,
       COUNT(*) AS total_clients
FROM credit_risk
GROUP BY loan_grade
ORDER BY risk_rate DESC;

-- =====================================================
-- Risk Analysis by Home Ownership
-- =====================================================

SELECT person_home_ownership,
       AVG(loan_status) AS risk_rate,
       COUNT(*) AS total_clients
FROM credit_risk
GROUP BY person_home_ownership
ORDER BY risk_rate DESC;

-- =====================================================
-- Risk Analysis by Previous Default History
-- =====================================================

SELECT cb_person_default_on_file,
       AVG(loan_status) AS risk_rate,
       COUNT(*) AS total_clients
FROM credit_risk
GROUP BY cb_person_default_on_file;

-- =====================================================
-- Average Client Income
-- =====================================================

SELECT AVG(person_income) AS avg_income
FROM credit_risk;

-- =====================================================
-- Average Loan Amount
-- =====================================================

SELECT AVG(loan_amnt) AS avg_loan_amount
FROM credit_risk;
CREATE VIEW risky_clients AS
SELECT *
FROM credit_risk
WHERE loan_percent_income > 0.4
AND cb_person_default_on_file = 'Y';

CREATE VIEW risk_by_grade AS
SELECT loan_grade,
       AVG(loan_status) AS risk_rate,
       COUNT(*) AS total_clients
FROM credit_risk
GROUP BY loan_grade;

CREATE VIEW risk_by_income AS
SELECT person_income,
       AVG(loan_status) AS risk_rate
FROM credit_risk
GROUP BY person_income;

CREATE VIEW client_summary AS
SELECT person_age,
       person_income,
       loan_amnt,
       loan_status
FROM credit_risk;

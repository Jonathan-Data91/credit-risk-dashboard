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
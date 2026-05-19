#  Credit Risk Analysis Dashboard

##  Project Overview
This project is a complete Credit Risk Analysis workflow using Excel, SQL, and Tableau.

The goal is to analyze customer data and identify factors that influence loan default risk.

We explore income levels, loan amounts, and loan grades to understand risk patterns.

---

##  Tools Used
- Excel → Data exploration and preprocessing
- MySQL → Data storage, queries, and analysis
- Tableau → Data visualization and dashboard creation
- GitHub → Version control and project hosting

---

##  Project Structure


---

##  SQL Workflow

The SQL part includes:

- Database creation
- Table creation
- Data analysis queries
- Views for risky clients

### Example Query:
```sql
SELECT loan_grade, AVG(loan_status) AS default_rate
FROM credit_risk
GROUP BY loan_grade;

 Dashboard Preview

🔍 Key Insights
Lower income groups tend to show higher default rates
Loan grade is strongly correlated with credit risk
Risk is not evenly distributed across income categories
A small group of customers accounts for most defaults

 Business Impact

This analysis can help financial institutions:

Identify high-risk clients
Improve credit scoring models
Reduce loan default rates
Make better lending decisions

 Future Improvements
Build a machine learning model for default prediction
Automate data pipeline from SQL to Tableau
Add real-time dashboard updates

 Author

Jonathan Rambeloson
Aspiring Data Analyst


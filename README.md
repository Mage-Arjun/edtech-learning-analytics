# Ed-Tech Learning Analytics & Student Performance Dashboard

## Overview
This project analyzes student academic performance and engagement data to identify
key factors influencing GPA and to detect students at academic risk. The solution
combines SQL-based data preparation, Python analytics and machine learning, and
interactive Power BI dashboards.

## Objectives
- Analyze student academic performance using GPA and grade distribution
- Understand the impact of behavioral factors such as study time and attendance
- Identify at-risk students using data-driven metrics
- Build an interactive dashboard for academic decision-making

## Dataset
The dataset contains student-level demographic, behavioral, and academic information,
including study time, absences, parental support, tutoring, and GPA. Encoded categorical
variables were validated and corrected during data preprocessing.

## Tools & Technologies
- SQL
- Python (Pandas, NumPy, Scikit-learn, Matplotlib)
- Power BI
- Power Query

## Methodology
1. Data extraction and preprocessing using SQL
2. Data cleaning and feature engineering in Python
3. Exploratory Data Analysis (EDA)
4. Machine Learning using Random Forest Regression
5. Interactive dashboard development in Power BI

## Machine Learning Results
- Model: Random Forest Regressor
- R² Score: 0.93
- Mean Absolute Error (MAE): 0.19

## Key Insights
- Attendance is the strongest predictor of academic performance
- Study habits significantly impact GPA
- Parental support and tutoring improve student outcomes
- Behavioral factors outweigh demographic attributes

## Dashboard
The Power BI dashboard includes:
- Performance overview KPIs
- Engagement and behavior analysis
- Risk-level identification and at-risk student listing

Screenshots are available in the `screenshots/` folder.

## Business Value
The analysis supports early identification of at-risk students and enables
data-driven academic interventions.

## Author
Arjun

create database edtech_analysis;

SELECT * FROM student_raw LIMIT 10;

CREATE TABLE students_cleaned AS
SELECT
    CAST(StudentID AS UNSIGNED) AS student_id,
    CAST(Age AS UNSIGNED) AS age,
    CAST(Gender AS CHAR) AS gender,
    CAST(Ethnicity AS CHAR) AS ethnicity,
    CAST(ParentalEducation AS CHAR) AS parental_education,
    CAST(StudyTimeWeekly AS DECIMAL(5,2)) AS study_time_weekly,
    CAST(Absences AS UNSIGNED) AS absences,
    CAST(Tutoring AS CHAR) AS tutoring,
    CAST(ParentalSupport AS CHAR) AS parental_support,
    CAST(Extracurricular AS CHAR) AS extracurricular,
    CAST(Sports AS CHAR) AS sports,
    CAST(Music AS CHAR) AS music,
    CAST(Volunteering AS CHAR) AS volunteering,
    CAST(GPA AS DECIMAL(3,2)) AS gpa,
    CAST(GradeClass AS CHAR) AS grade_class
FROM student_raw;

CREATE TABLE students_features AS
SELECT *,
       ROUND(study_time_weekly / 7.0, 2) AS avg_daily_study_hours,

       CASE
         WHEN gpa < 2 THEN 'Low'
         WHEN gpa BETWEEN 2 AND 3.5 THEN 'Medium'
         ELSE 'High'
       END AS performance_group,

       CASE
         WHEN absences >= 10 THEN 'High Risk'
         WHEN absences BETWEEN 5 AND 9 THEN 'Medium Risk'
         ELSE 'Low Risk'
       END AS attendance_risk,

       CASE
         WHEN tutoring = 'Yes' THEN 1 ELSE 0
       END AS tutoring_flag,

       CASE
         WHEN parental_support IN ('High','Medium') THEN 1 ELSE 0
       END AS parental_support_flag

FROM students_cleaned;
DESCRIBE students_cleaned;

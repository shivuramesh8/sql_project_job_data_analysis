## Introduction

This project focuses on data analyst roles in the job market. It explores high-paying jobs, in-demand skills, and top-paying skills. It also identifies skills that offer both high demand and high salaries in data analytics.

## Dataset Background

The dataset contains job and salary information for many different job roles. In this project, the analysis focuses only on data analyst roles. The dataset includes details such as job title, company, location, salary, and skills.

## Questions Answered Using SQL

1. What are the highest-paying data analyst jobs?
2. Which skills are needed for the highest-paying data analyst jobs?
3. What are the in-demand skills for data analytics?
4. Which skills have the highest average salary in data analytics?
5. Which skills offer a good balance between demand and salary in data analytics?

## Tools Used

- SQL
- PostgreSQL
- Git
- GitHub

## Analysis

### 1. Top-paying data analyst jobs

To identify the highest-paying data analyst jobs, the data was filtered to include only data analyst roles located in Bengaluru. Records with missing yearly salary values were excluded to ensure the analysis focused only on relevant job postings.

**SQL query:**  
[View SQL query](Project_sql_job_analysis/1_top_paying_jobs.sql)

**Result:**  
The highest-paying data analytics jobs include Data Architect positions, which appear at the top of the salary range. Companies such as Bosch Group appear multiple times among the top-paying job listings.

### 2. Skills required for top-paying Data Analyst jobs
 
 I filtered the data to include only Data Analyst jobs in Bengaluru with a valid salary.

From these, I selected the top 10 highest-paying jobs and then joined them with the skills data to see which skills are required for these high-paying Data Analyst roles.

**SQL query:**  
[View SQL query](Project_sql_job_analysis/2_skills_for_top_paying_jobs.sql)

**Result:**
SQL and Python are the most frequently required skills for top-paying Data Analyst roles in Bengaluru, followed by database technologies, cloud platforms, and BI tools.

### 3. In-Demand Skills for Data Analyst Jobs
First, I filtered the dataset to include only Data Analyst job roles.

Next, from these roles, I selected only the jobs that are work-from-home.

After filtering, I grouped the data by skill and counted the number of job postings for each skill to understand how often each skill appears.

Finally, I sorted the skills by their job count in descending order and limited the results to the top 5 most in-demand skills.

**SQL query:**  
[View SQL query](Project_sql_job_analysis/3_in-demand_skills.sql)

**Result:**
SQL is the most in-demand skill for remote Data Analyst roles, followed by Excel, Python, Tableau, power bi

### 4. Skills Associated with Higher Average Salaries

First, I filtered the data to include only Data Analyst roles that are remote and have non-missing salary values.

Next, I grouped the data by skill and calculated the average yearly salary for each skill.

Finally, I sorted the skills by average salary in descending order to identify the skills associated with the highest average pay.

**SQL query:**  
[View SQL query](Project_sql_job_analysis/4_top_paying_skills.sql)

**Result:**
- PySpark stands out with the highest average salary, which shows how valuable big-data skills are in the job market.
- Tools used in real production work, such as Bitbucket, GitLab, and Jenkins, are often linked to better-paying roles.
- Skills related to machine learning, like Watson and DataRobot, also show strong salary potential.
- Popular analysis tools such as Pandas, NumPy, and Jupyter still pay well, but usually less than big-data technologies.
- Overall, roles that handle large-scale and cloud-based data tend to offer higher salaries.

### 5. High-Paying and In-Demand Skills for Remote Data Analyst Roles

First, I filtered the data to include only remote Data Analyst roles with non-missing salary information.
Then, I grouped the data by skill ID and skill name to calculate the average yearly salary and the total number of job postings for each skill.
I applied a condition to keep only skills that appear in more than five job postings.
Finally, I sorted the results by average salary and job count in descending order.

**SQL query:**  
[View SQL query](Project_sql_job_analysis/5_optimal_skills.sql)

**Result:**
- Skills such as Go, Hadoop, Snowflake, Azure, AWS, and BigQuery are linked to higher average salaries, even though the number of job postings is moderate.
- Programming languages like Python, R, Java, and Go continue to be valuable, with Python showing one of the highest job counts.
- Tools such as Tableau, Power BI, Looker, and Qlik appear in many job postings, which shows strong demand, but their average salaries are slightly lower.
- SQL and Excel have the highest demand overall, suggesting they are essential skills for most Data Analyst roles.
- In general, roles that involve working with larger and cloud-based data systems tend to pay more than roles focused only on basic analysis tools.

## Conclusion

This project gives an overall view of the Data Analyst job market by analyzing high-paying roles, in-demand skills, and the average yearly salary for each skill. It also compares job demand and salary to identify skills that balance both demand and pay.
The insights from this analysis can help guide skill development and career planning in data analytics.

## Closing thoughts
Working on this SQL project helped me strengthen my SQL skills, such as joining tables, grouping data, and applying the right SQL commands. It also helped me better understand the business problem and how data can be used to answer real-world business questions.










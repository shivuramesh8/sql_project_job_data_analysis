/* 
Answer : What are the top skills based on the salary?
- Look at the average salary associated wtih each skill for data analyst positions 
- Focus on roles with specified salaries, regardless of location
- Why? It helps reveals how different skills impact salary for data analysts and
  Helps identify the most financially rewarding to acquire or improve
  */

SELECT
      sd.skills,
      ROUND(AVG(j.salary_year_avg),0) AS avg_salary
FROM job_postings_fact AS j
INNER JOIN skills_job_dim AS sj ON j.job_id = sj.job_id
INNER JOIN skills_dim AS sd ON sj.skill_id = sd.skill_id
WHERE
    j.job_title_short = 'Data Analyst' AND
    j.salary_year_avg IS NOT NULL AND
    j.job_work_from_home = TRUE
GROUP BY
        sd.skills
ORDER BY
        avg_salary DESC
LIMIT 30

    
